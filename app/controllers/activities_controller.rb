class ActivitiesController < ApplicationController

  def index 
    @activities = Activity.all 
    render json: @activities.as_json
    # Once front end is set
    # render template: "activities/index"
  end

  def show
    @activities = Activity.find_by(id: params[:id])
    render json: @activities.as_json
  end

  def create
    activity = Activity.new(
       # this should linked, not hardcoded.
      user_id: params[:user_id], 
      #this should be selected from a list
      activity_type: params[:activity_type],
      #
      ability_level: params[:ability_level]
    )
    if activity.save
      render json: { message: "Activity created successfully" }, status: :created
    else
      render json: { errors: activity.errors.full_messages }, status: :bad_request
    end
  end 


  def update 
    activity_id = params["id"]
    activity = Activity.find_by(id: activity_id)
    activity.user_id = params[:user_id] || activity.user_id
    activity.ability_level = params[:ability_level] || activity.ability_level
    activity.activity_type = params[:activity_type] || activity.activity_type

    if activity.save
      render json: activity.as_json
    else
      render json: {errors: activity.errors.full_messages}, status: 422
    end
  end

  def destroy
    activity_id = params["id"]
    activity = Activity.find_by(id: activity_id)
    activity.destroy
    render json: {message: "activity deleted"}
  end

end

