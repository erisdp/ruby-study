class TasksController < ApplicationController
    def create
        @project = Project.find(params.require(:project_id));
        @task = @project.tasks.create(task_params);
        redirect_to project_path(@project.id);
    end

    def destroy
        @task = Task.find(params.require(:id));
        @task.destroy;
        redirect_to project_path(params.require(:project_id));
    end

    def toggle
        render nothing: true;
        
        @task = Task.find(params[:id]);
        @task.done = !@task.done;
        @task.save;
    end

    private
        def task_params
            params.require(:task).permit(:title);
        end
end
