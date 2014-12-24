class CompletionsController < ApplicationController
  def create
    # todo.touch :completed_at # looks at timestamp and sets it to current time
    todo.complete!
    redirect_to todos_path
  end

  private
  def todo
     current_user.todos.find(params[:todo_id])
  end
end
