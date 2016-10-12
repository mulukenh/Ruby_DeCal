class EntriesController < ApplicationController
    def index
    end
    def new_cat
    end
    def new_user
    end
    def new_todo
    end
    def create_cats
        cat = Cat.new 
        cat.name = params[:name]
        cat.save
        flash[:notice] = "Cat successfully added!"
        redirect_to '/'
    end
    def create_todos
        todo = Todo.new
        todo.task = params[:task]
        todo.finished = params[:finished]
        todo.save
        flash[:notice] = "Todo successfully added!"
        redirect_to '/'
    end
    def create_users
        user = User.new
        user.username = params[:username]
        user.age = params[:age]
        user.email = params[:email]
        user.save
        flash[:notice] = "User successfully added!"
        redirect_to '/'
    end
    
    def show
        @cats = Cat.find_each
        @users = User.find_each
        @todos = Todo.find_each
    end
end