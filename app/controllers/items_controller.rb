class ItemsController < ApplicationController
before_action :find_item, only: [:show, :edit, :update, :destroy]
def index
  @items = Item.all.order("created_at DESC")
  end

def show
end

def new
  @item = Item.new
  end
def
  edit
end

def update
  if @item.update(item_parems)
    redirect_to item_path(@item)
  else
    render 'edit'
  end

  def destroy
  end
  
end
def create
  @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

    def item_params
      params.require(:item).permit(:title, :description)
    end

    def find_item
      @item = Item.find(params[:id])
    end
end
