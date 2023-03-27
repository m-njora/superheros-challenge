class HeroesController < ApplicationController
  #GET /heroes

  def index
    heroes = Hero.all
    render json: heroes, each_serializer: HeroSerializer
  end

  #GET /heroes/:id

  def show
     hero = Hero.find_by(id: params[:id])
     if hero
      render json: hero, each_serializer: HeroSerializer
    else
      render json: { error: 'Hero not found'}, status: :not_found
     end
  end

end
