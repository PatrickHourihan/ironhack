require 'sinatra'
require 'sinatra/reloader'

require_relative('lib/task.rb')
require_relative('lib/todolist.rb')

todo_list = TodoList.new("Dieter")
task1 = Task.new("Walk the dog")
task2 = Task.new("Wash the dishes")
task3 = Task.new("Grocery shopping")

todo_list.add_task(task1)
todo_list.add_task(task2)
todo_list.add_task(task3)

#add them to the list

get "/" do
  @list = todo_list.tasks
  erb :tasks_index
end

get "/new_task" do 
  erb :new_task
end

post "/delete" do 
  todo_list.delete_task(params[:task_id].to_i)
  redirect to "/"
end

post "/create_task" do 
  task_name = params[:new_task]
  
  new_task = Task.new(task_name)
  todo_list.add_task(new_task)
  redirect to "/"
end


get "/complete_task/:id" do 
  task_to_complete = todo_list.find_task_by_id(params[:id].to_i)
  task_to_complete.complete!
  redirect to "/"
end