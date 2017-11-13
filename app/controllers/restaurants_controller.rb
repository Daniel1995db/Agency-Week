class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy, :vote]
  respond_to :js, :json, :html
  before_action :authenticate_restaurant!, except: [:live_restaurants, :all_restaurants]

  # GET /restaurants
  # GET /restaurants.json
  def index
    @restaurant = current_restaurant
  end

  # GET /restaurants/1
  # GET /restaurants/1.json
  def show
  end

  # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
  end

  # GET /restaurants/1/edit
  def edit
  end

  # POST /restaurants
  # POST /restaurants.json
  def create
    @restaurant = Restaurant.new(restaurant_params)

    respond_to do |format|
      if @restaurant.save
        format.html { redirect_to @restaurant, notice: 'Restaurant was successfully created.' }
        format.json { render :show, status: :created, location: @restaurant }
      else
        format.html { render :new }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurants/1
  # PATCH/PUT /restaurants/1.json
  def update
    respond_to do |format|
      if @restaurant.update(restaurant_params)
        format.html { redirect_to @restaurant, notice: 'Restaurant was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurant }
      else
        format.html { render :edit }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  def vote
    if current_user
      if !current_user.liked? @restaurant
        FavoriteRestaurant.create ([
          {user_id: current_user.id, restaurant_id: @restaurant.id}
        ])
        @restaurant.liked_by current_user
      elsif current_user.liked? @restaurant
        @rest = FavoriteRestaurant.where(:user_id => current_user.id, :restaurant_id => @restaurant.id)
        p @rest
        @rest.delete_all
        @restaurant.unliked_by current_user
      end
    end
  end

  # DELETE /restaurants/1
  # DELETE /restaurants/1.json
  def destroy
    @restaurant.destroy
    respond_to do |format|
      format.html { redirect_to restaurants_url, notice: 'Restaurant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def live_restaurants
    @restaurants = Restaurant.all
    @discounts = Discount.live
  end
  def all_restaurants
    @restaurants = Restaurant.all
  end

  def choosing_option
    @pick_ups = PickUp.all
    @discounts = Discount.all 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurant_params
      params.require(:restaurant).permit(:cname, :address, :number, :photo, :menu, :longitude, :langitude)
    end
end
