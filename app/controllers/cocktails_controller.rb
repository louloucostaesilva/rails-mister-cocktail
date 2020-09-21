class CocktailsController < ApplicationController

before_action :set_cocktail, only: [:show, :edit, :update, :destroy]

  # GET /cocktails
  def index
    @cocktails = Cocktail.all
  end

 
  # GET /restaurants/1
  def show
  end

  # GET /cocktail/new
  def new
    @cocktail =Cocktail.new
  end

 

  # POST /restaurants
  def create
    @cocktail = Cocktail.new(cocktail_params)

    if @cocktail.save
      redirect_to @cocktail, notice: 'Cocktail was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /restaurants/1
  def update
    if @cocktail.update(cocktail_params)
      redirect_to @cocktail, notice: 'cocktail was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /restaurants/1
  def destroy
    @cocktail.destroy
    redirect_to cocktails_url, notice: 'Cocktail was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cocktail
      @cocktail = Cocktail.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cocktail_params
      params.require(:cocktail).permit(:name)
    end




end
