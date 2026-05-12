class TasksController < ApplicationController
  def list
    @tasks = Task.all
  end

  def view
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to list_path(@task)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    # if @task.update(task_params)
    redirect_to list_path(@task)
    # else
    # render :edit, status: :unprocessable_entity
    # end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to list_path, status: :see_other
  end
end

private_methods

def task_params
  params.require(:task).permit(:title, :details, :completed)
end
