class DishesController < ApplicationController

  def index
    @dishes = restaurant.dishes.all
  end

  def new
    @dish = restaurant.dishes.build
  end

  def create
    @dish = restaurant.dishes.build(dish_params)
        byebug
    if @dish.save
      redirect_to @dish
    else
      render :new
    end
  end

  def update
    @dish = restaurant.dishes.find(params[:id])
    if @dish.update(dish_params)
      # have these be more specific flash messages
      redirect_to [restaurant, @dish]
    else
      render :edit
    end
  end

  def show
    @dish = restaurant.dishes.find(params[:id])
  end

  private

  def dish_params
    params.require(:dish).permit(:name, :photo_url, :description)
  end

  def restaurant
    @restaurant ||= Restaurant.find(params[:restaurant_id])
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
