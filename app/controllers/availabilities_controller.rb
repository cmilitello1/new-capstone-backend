class AvailabilitiesController < ApplicationController
  def index 
    @availabilities = Availability.all 
    render json: @availabilities.as_json
    # Once front end is set
    # render template: "availabilities/index"
  end

  def show
    @availabilities = Availability.find_by(id: params[:id])
    render json: @availabilities.as_json
  end

  def create
    availability = Availability.new(
      user_id: params[:user_id],
      date: params[:date],
      time_range: params[:time_range]
    )
    if availability.save
      render json: {message: "Availability posted"}, status: :created
    else
      render json: {errors: availability.errors.full_messages }, status: :bad_request
    end
  end 

  def update
    availability_id = params["id"]
    availability = Availability.find_by(id: availability_id)
    availability.user_id = params[:user_id] ||  availability.user_id
    availability.date = params[:date] ||  availability.date
    availability.time_range = params[:time_range] ||  availability.time_range

    if availability.save
      render json: availability.as_json
    else 
      render json: {errors: availability.errors.full_messages}, status: 422
    end
  end
  
  def destroy
    availability_id = params["id"]
    availability = Availability.find_by(id: availability_id)
    availability.destroy
    render json: {message: "availability deleted"}
  end

end
