class SubmissionsController < ApplicationController
  def create
    @submission = Submission.new(submission_params)

    if @submission.save
      render json: {"status":"success"}
    else
      render json:{"status":"error"}
    end
  end

  private
  def submission_params
    params.require(:submission).permit(:first_name, :last_name, :email, :slogan)
  end
end
