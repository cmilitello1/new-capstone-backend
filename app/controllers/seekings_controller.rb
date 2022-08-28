class SeekingsController < ApplicationController

  def index
    @seekings = Seeking.all 
    render json: @seekings.as_json
    # Once front end is set
    # render template: "seekings/index"
  end

  def create
    seeking = Seeking.new(
      user_id: params[:user_id],
      max_ppl: params[:max_ppl],
      date_time_wanted: params[:date_time_wanted],
    )

    if seeking.save
      render json: {message: "Seeking posted"}, status: :created
    else
      render json: {errors: seeking.errors.full_messages }, status: :bad_request
    end
  end

  def update
    seeking_id = params["id"]
    seeking = Seeking.find_by(id: seeking_id)
    seeking.user_id = params[:user_id] | seeking.user_id
    seeking.max_ppl = params[:max_ppl] | seeking.max_ppl
    seeking.date_time_wanted = params[:date_time_wanted] | seeking.date_time_wanted
  end

  def destroy
    seeking_id = params["id"]
    seeking = Seeking.find_by(id: seeking_id)
    seeking.destroy
    render json: {message: "seeking activity deleted"}
  end 
end
