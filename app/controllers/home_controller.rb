class HomeController < ApplicationController

  def index
    @gadgets = Gadget.limit(12)
  end

end
