class DishesController < ApplicationController

  def index
    @dishes = Dish.all
  end

  def new
    @dish = Dish.new
  end

  def create
    @dish = Dish.new(dish_params)
        byebug
    if @dish.save
      redirect_to @dish
    else
      render :new
    end
  end

  def update
    @dish = Dish.find(params[:id])
    if @dish.update(dish_params)
      # have these be more specific flash messages
      redirect_to :index, notice: "success"
    else
      # use errors from validations
      #errors =  @dash.errors.full_messages.join(", ")
      redirect_to :index, error: "there was a problem"
    end
  end

  def show
    @dish = Dish.find(params[:id])
  end

  private

  def dish_params
    params.require(:dish).permit(:name, :photo_url, :description)
  end
end

# restful design

# 7 basic actions

# index -> 0,1, or many records (paging, searching, filtering)

# new -> displays a form to create a non-existing record (posts to CREATE)
# create -> take the given params[:dish][:name] and create a record with those values

# show -> showing exactly 1 record (could be by an id, slug, current_user.profile (tied to an object in session))

# edit -> displays a form to create a existing record (puts patches to UPDATE)
# update -> take the given params[:dish][:name] and updates a record with those values

# destroy -> remove a record from the database  (could be by an id, slug, current_user.profile (tied to an object in session))
