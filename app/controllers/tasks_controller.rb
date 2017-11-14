class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to @task
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to @task
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  def task_params
     params.require(:task).permit(:name, :description)
  end
end

# class RestaurantsController < ApplicationController

#   before_action :set_restaurant, only: [:edit, :update, :destroy, :show]

#   def index
#     @restaurants = Restaurant.all
#   end

#   def show
#   @restaurant = Restaurant.find(params[:id])
#   end

#   def new
#     @restaurant = Restaurant.new
#   end

#   def create
#     @restaurant = Restaurant.new(restaurant_params)

#     @restaurant.save

#     # redirect_to restaurant_path(@restaurant)
#     redirect_to @restaurant
#   end

#   def edit
    #@restaurant = Restaurant.find(params[:id])
#   end

#   def update
# => @restaurant = Restaurant.find(params[:id])
#     @restaurant.update(restaurant_params)

#     redirect_to @restaurant
#   end

#   def destroy
# => @restaurant = Restaurant.find(params[:id])
#     @restaurant.destroy
#     redirect_to restaurants_path
#   end

#   def restaurant_params
#     params.require(:restaurant).permit(:address, :rating, :name)
#   end

#   def set_restaurant
#     @restaurant = Restaurant.find(params[:id])
#   end
# end
