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
        render json: @facilities = if params[:service_level_2].nil? && params[:service_level_1].nil?
                                     Facility.all
                                   else
                                     get_facilities_by_service(params)
                                   end
      end
    end
  end

  def get_facilities_by_service(params)
    if !params[:service_level_2].nil?
      facility_ids_that_match = Service.where(service_level_2:
                                                  params[:service_level_2]).uniq.pluck(:facility_id)
    else
      facility_ids_that_match = Service.where(service_level_1:
                                                  params[:service_level_1]).uniq.pluck(:facility_id)
    end
    Facility.where(facility_id: facility_ids_that_match)
  end

  def single_facility
    @facility = Facility.where(facility_id: params[:facility_id]).first
    services = Service.where(facility_id: params[:facility_id])
    @services_hash = generate_hash_of_service_levels(services)
  end

  def service_types_by_administration
    # add in test for if health or benefits or NCA and redirect accordingly
    @services = Service.all.pluck(:service_level_1).uniq
    render json: @services
  end

  def service_level_2
    # add in test for if health or benefits or NCA and redirect accordingly
    @services = Service.where(
      service_level_1: params[:service_level_1]).pluck(:service_level_2).uniq
    render json: @services
  end

  def generate_hash_of_service_levels(services)
    services_rolled_up = roll_up_services(services)
    services_hash = {}
    services_rolled_up.each do |service_level_1|
      services_hash[service_level_1] = add_to_services_hash(
        services, services_hash, service_level_1)
    end
    services_hash
  end

  def add_to_services_hash(services, _services_hash, service_level_1)
    temp_array = []
    services.each do |service|
      if service_level_1 == service.service_level_1
        temp_array << service.service_level_2 unless service.service_level_2.nil?
      end
    end
    temp_array
  end

  def roll_up_services(services)
    services_rolled_up = []
    services.each do |service|
      unless services_rolled_up.include?(service.service_level_1)
        services_rolled_up << service.service_level_1
      end
    end
    services_rolled_up
  end
end
