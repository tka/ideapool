class ProjectsController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  before_filter :get_project, except:[:index, :create, :new, :show]

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
