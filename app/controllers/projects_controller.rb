class ProjectsController < ApplicationController
        #GET /projects
        def index
            projects = Project.includes(boards: :tasks).all
            render json: projects, include: { boards: { include: :tasks } }
        end

        # GET /projects/id
        def show
            project = Project.includes(boards: :tasks).find_by(id: params[:id])
            render json: project, include: { boards: { include: :tasks } }
        end

        def create
            project = Project.create!(project_params)
            render json: project, status: 201
        end

        def update
            project = Project.find_by(id: params[:id])
            project.update!(project_params)
            render json: project
        end 

        def destroy
            proj = Project.find_by(id: params[:id])
            proj.destroy
            head :no_content
        end 

        private

        def project_params
          params.require(:project).permit(:title, :favorite, :color)
        end        
  end
  