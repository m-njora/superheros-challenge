class HeroesController < ApplicationController
  #GET /heroes

  def index
    heroes = Hero.all
    render json: heroes, only: [:id, :name, :super_name]
  end

  #GET /heroes/:id

  def show
  end

end
