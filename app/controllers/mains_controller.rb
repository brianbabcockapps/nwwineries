class MainsController < ApplicationController

  def main
    @main = Main.order("updated_at").last
  end

  def update
    @main = Main.new(main_params)
    if @main.save
      redirect_to root_path
      
    else
      render 'main'
    end
  end
  
  private
  
  def main_params
    params.require(:main).permit(:title, :paragraph, :graphic)
  end
  
end