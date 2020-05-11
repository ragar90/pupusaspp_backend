class Api::MenusController < ApplicationController
  before_action :set_api_menu, only: [:show, :edit, :update, :destroy]

  # GET /api/menus
  # GET /api/menus.json
  def index
    @api_menus = Api::Menu.all
  end

  # GET /api/menus/1
  # GET /api/menus/1.json
  def show
  end

  # GET /api/menus/new
  def new
    @api_menu = Api::Menu.new
  end

  # GET /api/menus/1/edit
  def edit
  end

  # POST /api/menus
  # POST /api/menus.json
  def create
    @api_menu = Api::Menu.new(api_menu_params)

    respond_to do |format|
      if @api_menu.save
        format.html { redirect_to @api_menu, notice: 'Menu was successfully created.' }
        format.json { render :show, status: :created, location: @api_menu }
      else
        format.html { render :new }
        format.json { render json: @api_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/menus/1
  # PATCH/PUT /api/menus/1.json
  def update
    respond_to do |format|
      if @api_menu.update(api_menu_params)
        format.html { redirect_to @api_menu, notice: 'Menu was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_menu }
      else
        format.html { render :edit }
        format.json { render json: @api_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/menus/1
  # DELETE /api/menus/1.json
  def destroy
    @api_menu.destroy
    respond_to do |format|
      format.html { redirect_to api_menus_url, notice: 'Menu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_menu
      @api_menu = Api::Menu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_menu_params
      params.fetch(:api_menu, {})
    end
end
