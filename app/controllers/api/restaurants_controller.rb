class Api::RestaurantsController < ApplicationController
  before_action :set_api_restaurant, only: [:show, :edit, :update, :destroy]

  # GET /api/restaurants
  # GET /api/restaurants.json
  def index
    @api_restaurants = Api::Restaurant.all
  end

  # GET /api/restaurants/1
  # GET /api/restaurants/1.json
  def show
  end

  # GET /api/restaurants/new
  def new
    @api_restaurant = Api::Restaurant.new
  end

  # GET /api/restaurants/1/edit
  def edit
  end

  # POST /api/restaurants
  # POST /api/restaurants.json
  def create
    @api_restaurant = Api::Restaurant.new(api_restaurant_params)

    respond_to do |format|
      if @api_restaurant.save
        format.html { redirect_to @api_restaurant, notice: 'Restaurant was successfully created.' }
        format.json { render :show, status: :created, location: @api_restaurant }
      else
        format.html { render :new }
        format.json { render json: @api_restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/restaurants/1
  # PATCH/PUT /api/restaurants/1.json
  def update
    respond_to do |format|
      if @api_restaurant.update(api_restaurant_params)
        format.html { redirect_to @api_restaurant, notice: 'Restaurant was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_restaurant }
      else
        format.html { render :edit }
        format.json { render json: @api_restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/restaurants/1
  # DELETE /api/restaurants/1.json
  def destroy
    @api_restaurant.destroy
    respond_to do |format|
      format.html { redirect_to api_restaurants_url, notice: 'Restaurant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_restaurant
      @api_restaurant = Api::Restaurant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_restaurant_params
      params.fetch(:api_restaurant, {})
    end
end
