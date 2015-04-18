class ProjectsController < ApplicationController
  def index
    projects = Project.all
    render json: projects
  end

  def show
    project = Project.where(:id => params[:id]).first
    render json: project
  end

  private

  def project_params
    params.require(:project).permit(:id, :address)
  end
end
