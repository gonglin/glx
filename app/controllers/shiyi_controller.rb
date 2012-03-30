# encoding: utf-8
class ShiyiController < ApplicationController

  def index
  	@items = Item.paginate(:page => params[:page], :per_page => 9)
  end

end
