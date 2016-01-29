class JobsController < ApplicationController
  def index
    @jobs=Job.all
  end

  def job_detail
    @job=Job.find(params[:job_id])
  end

  def social_sites

  end

end
