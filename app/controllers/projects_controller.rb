class ProjectsController < ApplicationController
        #GET /projects
        def index
            @projects = Project.all
            render json: @projects, include: [ 'boards', 'boards.tasks' ]
        end

        # GET /projects/id
        def show
            project = Project.includes(boards: :tasks).find_by(id: params[:id])
            render json: project, include: [ 'boards', 'boards.tasks' ]
        end

        def create
            project = Project.create!(build_project_params)
            render json: project, status: :created
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
        
        def build_project_params
            project_params_with_defaults = project_params.merge(
              title: params.dig(:project, :title) || "New Project",
              favorite: params.dig(:project, :favorite) || false,
              color: params.dig(:project, :color) || '#e1bee7'
            )
            project_params_with_defaults
        end
  end
  