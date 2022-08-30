class UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users.as_json
    # render template: "user/index"
  end 

  def show
    @users = User.find_by(id: params[:id])
    render json: @users.as_json
    #render template: "user/show"
  end

  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      location: params[:location],
      distance_willing_to_travel: params[:distance_willing_to_travel],
      addtional_notes: params[:addtional_notes],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: {message: "user created!"}, status: :created
    else
      render json: {errors: student.errors.full.messages }, status: :bad_request
    end
  end 

  

end
