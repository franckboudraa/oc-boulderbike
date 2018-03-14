class SubmissionsController < ApplicationController
  def create
    @submission = Submission.new(submission_params)

    if @submission.save
      render json: {"status":"success"}
    else
      render :status => 400
    end
  end

  private
  def submission_params
    params.permit(:first_name, :last_name, :email, :slogan)
  end
end
