class JobsController < ApplicationController
  def index
    @jobs=Job.all
  end

  def job_detail

  end
end
