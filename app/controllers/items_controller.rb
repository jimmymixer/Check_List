class ItemsController < ApplicationController
  before_action :find_item, only: [:show, :edit, :update, :destroy]

  def index
    if user_signed_in?
      # @items = Item.all.order("created_at DESC")
      @items = Item.where(:user_id => current_user.id).order("created_at DESC")
    end
  end

  def show
    # @item = Item.find(params[:id])
  end

  def new
    # @item = Item.new #WHEN new.html.erb @item will be used in the _form.html.erb partial
    @item = current_user.items.build
  end

  def create
    # @item = Item.new(item_params)
    @item = current_user.items.build(item_params)
    if @item.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit #LOADS edit.html.erb for def update
    # @item = Item.find(params[:id])
  end

  def update
    # @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to item_path(@item) #REDIRECT to show.html.erb
    else
      render 'edit' #REDIRECT to edit.html.erb
    end
  end

  def destroy
    # @item = Item.find(params[:id])
    @item.destroy
    redirect_to root_path
  end

  def complete
    @item = Item.find(params[:id])
    @item.update_attribute(:completed_at, Time.now)
    redirect_to root_path
  end

  private

    def item_params
      params.require(:item).permit(:title, :description)
    end

    def find_item
      @item = Item.find(params[:id])
    end

end
