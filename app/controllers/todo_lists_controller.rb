class TodoListsController < ApplicationController
	def index
		@todo_list = TodoList.new
	end

	def create
		@todo_list = TodoList.create(params.require(:todo_list).permit(:description))
  	redirect_to root_url
  end
end
