class ProjectsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  before_filter :get_project, except:[:index, :create, :new, :show]

  def index
    @categories = Category.all
    @projects = Project.includes(:category).order(id: :desc)

    if params[:category_id].present?
      @projects = @projects.where(category_id: params[:category_id])
    end

    if params[:search].present?
      @projects = @projects.where("name ilike :search or description ilike :search", search: "%#{params[:search]}%")
    end
  end

  def show
    @project = Project.find(params[:id])
  end

  def edit
  end

  def update
    if @project.update(project_params(params))
      redirect_to project_url(@project)
    else
      render :edit
    end
  end

  def new
    @project = Project.new
  end

  def create
    @project = current_user.projects.new(project_params(params))
    if @project.save
      redirect_to project_url(@project)
    else
      render :new
    end
  end

  private

  def get_project
    @project = if current_user.is_admin?
                 Project.find(params[:id])
               else
                 current_user.projects.find_by(id: params[:id])
               end

    if @project.nil?
      redirect_to :back, notice: "權限不足, 請聯繫專案負責人"
    end
  end

  def project_params(params)
    params.require(:project).permit(:name, :description, :image, :category_id, :tags, :web_url, :fb_url, :github_url)
  end
end
