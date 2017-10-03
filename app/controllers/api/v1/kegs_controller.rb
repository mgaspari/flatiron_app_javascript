class Api::V1::KegsController < ApplicationController

  def show
    @keg = Keg.find_by(id: params[:id])
    render json: @keg
  end

  def index
    @kegs = Keg.all
    render json: @kegs
  end

end
