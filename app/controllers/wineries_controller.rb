class WineriesController < ApplicationController
  def winerylist
  end
  
  def main
    @main = Main.order("updated_at").last
  end
  
 
  

end
