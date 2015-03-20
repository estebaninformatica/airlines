class Api::V1::AirlinesController < ApplicationController
  

  def index
    @airlines = Airline.search(params[:criteria]).limit(params[:limit]).offset(params[:offset])


    render json: @airlines
  end

  def show
    @airline = Airline.find(params[:id])
    render json: @airline
  end

end