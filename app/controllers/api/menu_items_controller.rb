class Api::MenuItemsController < ApplicationController
  before_action :set_api_menu_item, only: [:show, :edit, :update, :destroy]

  # GET /api/menu_items
  # GET /api/menu_items.json
  def index
    @api_menu_items = Api::MenuItem.all
  end

  # GET /api/menu_items/1
  # GET /api/menu_items/1.json
  def show
  end

  # GET /api/menu_items/new
  def new
    @api_menu_item = Api::MenuItem.new
  end

  # GET /api/menu_items/1/edit
  def edit
  end

  # POST /api/menu_items
  # POST /api/menu_items.json
  def create
    @api_menu_item = Api::MenuItem.new(api_menu_item_params)

    respond_to do |format|
      if @api_menu_item.save
        format.html { redirect_to @api_menu_item, notice: 'Menu item was successfully created.' }
        format.json { render :show, status: :created, location: @api_menu_item }
      else
        format.html { render :new }
        format.json { render json: @api_menu_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/menu_items/1
  # PATCH/PUT /api/menu_items/1.json
  def update
    respond_to do |format|
      if @api_menu_item.update(api_menu_item_params)
        format.html { redirect_to @api_menu_item, notice: 'Menu item was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_menu_item }
      else
        format.html { render :edit }
        format.json { render json: @api_menu_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/menu_items/1
  # DELETE /api/menu_items/1.json
  def destroy
    @api_menu_item.destroy
    respond_to do |format|
      format.html { redirect_to api_menu_items_url, notice: 'Menu item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_menu_item
      @api_menu_item = Api::MenuItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_menu_item_params
      params.fetch(:api_menu_item, {})
    end
end
