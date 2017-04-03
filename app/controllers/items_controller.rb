class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  skip_after_action :verify_policy_scoped, :only => [:index, :show]
  before_action :set_item, only: [:add_plant, :remove_plant, :duplicate, :destroy]

  def index

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

    elsif params['category'] == "De m'éclairer PE"
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

  def show
    @item = Item.find(params[:id])
    authorize @item
  end

  def destroy
    @item.destroy
    redirect_to complete_path
  end

  def duplicate
    my_pot = Item.new({
                    name: params[:name].to_s + '\' s pot',
                    category: "Custom",
                    description: "to do",
                    price: @item.price,
                    slot: @item.slot,
                    volume: @item.volume,
                    length: @item.length,
                    width: @item.width,
                    weight: @item.weight
                    })
    my_pot.remote_photo_url = @item.photo.to_s
    if my_pot.save
      render json: my_pot
    else
      redirect_to complete_path
    end
  end

  def add_plant
    if @item.plants.size < @item.slot
      @plant = Plant.find(params[:plant])
      @item.add_plant(@plant)

      if @item.save
        render json: @item
        flash[:notice] = "Plant added to your item"
      else
        redirect_to complete_path
        flash[:alert] = "Plant not added to your item"
      end
    else
      flash[:alert] = "No room left in this pot, pick another one !"
      redirect_to complete_path
    end
  end

  def remove_plant
    @plant = Plant.find(params[:plant])
    @item.remove_plant(@plant)

    if @item.save
      render json: @item
      flash[:notice] = "Plant removed from your item"
    else
      redirect_to complete_path
      flash[:alert] = "Item not removed to your item"
    end
  end

  private

  def set_item
    @item = Item.find(params[:id])
    authorize @item
  end
end
