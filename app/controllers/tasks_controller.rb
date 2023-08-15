class TasksController < ApplicationController

  def index
    # TODO : This action should fetch all tasks, and a view should loop over these to display them
    @tasks = Task.all
  end

  def show
    set_task
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path(@task)
  end

  def edit
    set_task
  end

  def update
    set_task
    @task.update(task_params)
    redirect_to tasks_path(@task)
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
