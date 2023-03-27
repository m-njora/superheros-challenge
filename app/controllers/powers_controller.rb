class PowersController < ApplicationController
  # GET /powers

  def index
    powers = Power.all
    render json: powers, only: [:id, :name, :description]

  end
# GET /powers/:id

  def show
    
  end

  def change
  end
end
