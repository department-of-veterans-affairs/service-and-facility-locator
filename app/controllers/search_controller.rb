class SearchController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
  end

  def show
    respond_to do |format|
      format.html
      format.json do
        if params[:service_level_2].nil? and params[:service_level_1].nil?
          @facilities = Facility.all
        else
          if !params[:service_level_2].nil?
            facility_ids_that_match = Service.where(service_level_2: params[:service_level_2]).uniq.pluck(:facility_id)
          else
            facility_ids_that_match = Service.where(service_level_1:
                          params[:service_level_1]).uniq.pluck(:facility_id)
          end
          @facilities = Facility.where(facility_id: facility_ids_that_match)
        end
        render json: @facilities
      end
    end
  end

  def single_facility
    @facility = Facility.where(facility_id: params[:facility_id]).first
    services = Service.where(facility_id: params[:facility_id])
    @servicesRolledUp = []
    services.each do | service |
      unless @servicesRolledUp.include?(service.service_level_1)
        @servicesRolledUp << service.service_level_1
      end
    end
    @servicesHash = {}
    @servicesRolledUp.each do | serviceLevel1 |
      tempArray = []
      services.each do | service |
        if serviceLevel1 == service.service_level_1
          if service.service_level_2 != nil
            tempArray << service.service_level_2
          end
        end
        @servicesHash[serviceLevel1] = tempArray
      end
    end
    i = 2
  end
  
  def service_types_by_administration
    #add in test for if health or benefits or NCA and redirect accordingly
    @services = Service.all.pluck(:service_level_1).uniq
    render json: @services
  end

  def service_level_2
    #add in test for if health or benefits or NCA and redirect accordingly
    @services = Service.where(service_level_1: params[:service_level_1]).pluck(:service_level_2).uniq
    render json: @services
  end
end
