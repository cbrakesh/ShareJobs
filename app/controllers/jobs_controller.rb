class JobsController < ApplicationController
  def index
    @jobs=Job.all unless current_user
    @jobs=current_user.jobs if current_user
  end

  def job_detail
    @job=Job.find(params[:job_id])
  end

  def social_sites

  end

end
