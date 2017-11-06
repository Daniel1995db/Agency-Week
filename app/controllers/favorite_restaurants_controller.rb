class FavoriteRestaurantsController < ApplicationController
  before_action :set_favorite_restaurant, only: [:show, :edit, :update, :destroy]

  # GET /favorite_restaurants
  # GET /favorite_restaurants.json
  def index
    @favorite_restaurants = FavoriteRestaurant.all
  end

  # GET /favorite_restaurants/1
  # GET /favorite_restaurants/1.json
  def show
  end

  # GET /favorite_restaurants/new
  def new
    @favorite_restaurant = FavoriteRestaurant.new
  end

  # GET /favorite_restaurants/1/edit
  def edit
  end

  # POST /favorite_restaurants
  # POST /favorite_restaurants.json
  def create
    @favorite_restaurant = FavoriteRestaurant.new(favorite_restaurant_params)

    respond_to do |format|
      if @favorite_restaurant.save
        format.html { redirect_to @favorite_restaurant, notice: 'Favorite restaurant was successfully created.' }
        format.json { render :show, status: :created, location: @favorite_restaurant }
      else
        format.html { render :new }
        format.json { render json: @favorite_restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /favorite_restaurants/1
  # PATCH/PUT /favorite_restaurants/1.json
  def update
    respond_to do |format|
      if @favorite_restaurant.update(favorite_restaurant_params)
        format.html { redirect_to @favorite_restaurant, notice: 'Favorite restaurant was successfully updated.' }
        format.json { render :show, status: :ok, location: @favorite_restaurant }
      else
        format.html { render :edit }
        format.json { render json: @favorite_restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favorite_restaurants/1
  # DELETE /favorite_restaurants/1.json
  def destroy
    @favorite_restaurant.destroy
    respond_to do |format|
      format.html { redirect_to favorite_restaurants_url, notice: 'Favorite restaurant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorite_restaurant
      @favorite_restaurant = FavoriteRestaurant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def favorite_restaurant_params
      params.require(:favorite_restaurant).permit(:user_id, :restaurant_id)
    end
end
