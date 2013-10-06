class HomeController < ApplicationController

  def index
    @gadgets = Gadget.limit(12).all
  end

end
