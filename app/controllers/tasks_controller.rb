class TasksController < ApplicationController

  def index
    # TODO : This action should fetch all tasks, and a view should loop over these to display them
    @tasks = Task.all
  end

  def show
    set_task
  end

  private

  def set_task
    @task = Task.find(params[:id])
    # raise
  end
end
