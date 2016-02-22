class SearchController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
  end

  def show
    @facility = Facility.where(Classification: params[:Classification])
    render json: @facility.to_json
  end

  def single_facility
    @facility = Facility.where(ID: params[:ID]).first
    @services = Service.where(Facility_ID: params[:ID])
  end
end
