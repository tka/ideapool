class WelcomeController < ApplicationController
  def index
    @categories = Category.all
    @projects = Project.all

    if params[:category_id].present?
      @projects = @projects.where(category_id: params[:category_id])
    end

    if params[:search].present?
      @projects = @projects.where("name ilike :search or description ilike :search", search: "%#{params[:search]}%")
    end
  end
end
