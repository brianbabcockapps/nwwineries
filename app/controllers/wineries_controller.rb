class WineriesController < ApplicationController
  def winerylist
  end
  
  def main
    @main = Main.order("updated_at").last
  end
  
  def index_edit
    @main = Main.new
  end
  
  def created
    @main = Main.new(main_params)
    if @main.save
      
    else
      render 'index_edit'
    end
  end

  def show
    @main = Main.order("updated_at").last
    @winery = Winery.find(params[:id])
  end
  
  def new
    @main = Main.order("updated_at").last
    @winery = Winery.new
  end
  
  def create
    @winery = Winery.new(winery_params)
    @winery.active = true
    @wineryHistory = @winery.wineryHistories.build(winery_params)
    if @winery.save
      @wineryHistory.save
      redirect_to @winery
    else
      render 'main_edit'
    end
  end
  
  def update
    @winery = Winery.find(params[:id])
    @wineryHistory = @winery.wineryHistories.build(winery_params)
    if @winery.update_attributes(winery_params)
      @wineryHistory.save
      redirect_to @winery
    else
      render 'main_edit'
    end
  end
  
  def winery_list
    
    @main = Main.order("updated_at").last
    if(params.has_key?(:range))
      range = params[:range].to_i
    else
      range = 10
    end
    
    if (params.has_key?(:start))
      start = params[:start].to_i
    else
      start = 0
    end
    
    if (start >= Winery.count(:all))
      start = Winery.count(:all) - range
      params[:start] = start
    end
    
    @wineries = Winery.limit(range).offset(start)

  end
  
  private
  
  def main_params
    params.require(:main).permit(:title, :paragraph, :graphic)
  end
  
  def winery_params
    params.require(:winery).permit(:name, :order, :price, :reigon, :tasting_room_hours, :seasonal, :street_address_1,
      :street_address_2, :city, :state, :zip, :phone, :longitude, :latitude, :tasting_room_cost, :description)
  end
  
end
