class MenusController < ApplicationController
  def index
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(params[:menu])
    @menu.meal = params[:meal]
    @menu.save
    p @menu.meal
  end
end