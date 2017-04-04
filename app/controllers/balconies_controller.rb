class BalconiesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_balcony, only: [:show_public, :show_private, :edit, :update, :destroy, :add_item, :remove_item, :add_collection_to_cart]

  def index
    @balconies = policy_scope(Balcony)

  end

  def show_public
    @review = Review.new
  end

  def show_private
  end

  def new
    @balcony = Balcony.new
    authorize @balcony
  end

  def create
    @balcony = current_user.balconies.new(balcony_params)
    authorize @balcony
    if @balcony.save
      redirect_to complete_path
      flash[:notice] = "Balcony successfuly created, now pick some plants!"
    else
      flash[:alert] = "Balcony not created"
      render :new
    end
  end

  def complete
    @balcony = current_user.balconies.last
    authorize @balcony
    if params['category'] == 'De Profiter'
      @sub_categories = [
        'Chaise',
        'Table',
        'table basse',
        'fauteuil & canapé',
        'Coussin',
        'fatboy',
        'chaise longue',
        'Table + chaise']
      @items = Item.where(category: 'De Profiter')

    elsif params['category'] == 'De Ranger'
      @sub_categories = ['coffre', 'seche linge exterieur']
      @items = Item.where(category: 'De Ranger')
    elsif params['category'] == 'De Recevoir'
     @sub_categories = ['Verres', 'Assiettes', 'Apéritif']

    elsif params['category'] == 'De Cuisiner'
      @sub_categories = ['barbecue', 'Plancha', 'Accessoire barbecue', 'Pierrade', 'Accessoire Cuisine']
      @items = Item.where(category: 'De Cuisiner')
    elsif params['category'] == 'De Cultiver'
      @sub_categories = [
      'pots',
      'graines',
      'potager',
      'terrreau',
      'accessoire jardinage',
      'équipements (tablier gant etc..)',
      'composte',
      'lecture',
      'serre']
      @items = Item.where(category: 'De Cultiver')

    elsif params['category'] == 'De Me Proteger'
      @sub_categories = [
      'Parasol',
      'panneau occultant',
      'Store Occultant']
      @items = Item.where(category: 'De Me Proteger')

    elsif params['category'] == "De m'éclairer"
      @sub_categories = [
        'Spot',
        'lumiere design blanche sur batterie']
      @items = Item.where(category: "De m'éclairer")

    elsif params['category'] == 'De Refaire mon sol'
      @sub_categories = [
        'moquette herbe',
        'caillebotis',
        'terrasse teck']
      @items = Item.where(category: 'De Refaire mon sol')
    else
      @items = Item.all
      @sub_categories = []
    end
  end

  def edit
  end

  def update
    if @balcony.update(balcony_params)
      redirect_to complete_path
      flash[:notice] = "Balcony successfuly edited"
    else
      render :edit
    end
  end

  def destroy
    @balcony.destroy
    redirect_to profile_path
  end

  def add_item
    @item = Item.find(params[:item])
    @balcony.add_item(@item)

    if @balcony.save
      redirect_to complete_path(anchor: 'anchor1')
      flash[:notice] = "Item added to your balcony"
    else
      redirect_to complete_path
      flash[:alert] = "Item not added to your balcony"
    end
  end

  def remove_item
    @item = Item.find(params[:item])
    @balcony.remove_item(@item)

    if @balcony.save
      redirect_to complete_path(anchor: 'anchor2')
      flash[:notice] = "Item removed from your balcony"
    else
      redirect_to complete_path
      flash[:alert] = "Item not removed to your balcony"
    end
  end

  def add_collection_to_cart
    @balcony.items.each do |item|
      @cart.add_item(item)
    end
    @cart.save
    redirect_to complete_path
  end

  private

  def balcony_params
    params.require(:balcony).permit(:model, :address, :city, :department, :length, :orientation, :photo, :photo_cache)
  end

  def set_balcony
    @balcony = Balcony.find(params[:id])
    authorize @balcony
  end

end
