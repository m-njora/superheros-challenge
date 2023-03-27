class PowersController < ApplicationController
  # GET /powers

  def index
    powers = Power.all
    render json: powers, only: [:id, :name, :description]

  end
# GET /powers/:id

  def show
    power = Power.find_by(id: params[:id])
     if power
      render json: power.as_json
     else
      render json: { error: 'Power not found'}, status: :not_found
     end
  end
  

  def change
  end
end
