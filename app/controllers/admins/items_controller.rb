class Admins::ItemsController < ApplicationController
  def top
  end
  
  def new
    @item = Item.new
  end
  
  def show
    @item=Item.find(params[:id])
  end
  
  def edit
    @item=Item.find(params[:id])
  end
  
  def create
    @item = Item.new(item_params)
    @item.genre_id = 1
    
    if @item.save
      redirect_to  admins_item_path(@item)
    else
      render :new
    end
 
  end
  
   def update
    @item=Item.find(params[:id])
    if @item.update(item_params)
    redirect_to admins_item_path(@item)
    else
    render:edit
    end
   end
  
   private
  
  def item_params
    params.require(:item).permit(:image,:name,:introduction,:price,:is_active,:genre_id)
  end
end
