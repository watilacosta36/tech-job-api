class JobTagsController < ApplicationController
  before_action :set_job_tag, only: %i[ show update destroy ]

  # GET /job_tags
  def index
    @job_tags = JobTag.all

    render json: @job_tags
  end

  # GET /job_tags/1
  def show
    render json: @job_tag
  end

  # POST /job_tags
  def create
    @job_tag = JobTag.new(job_tag_params)

    if @job_tag.save
      render json: @job_tag, status: :created, location: @job_tag
    else
      render json: @job_tag.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /job_tags/1
  def update
    if @job_tag.update(job_tag_params)
      render json: @job_tag
    else
      render json: @job_tag.errors, status: :unprocessable_entity
    end
  end

  # DELETE /job_tags/1
  def destroy
    @job_tag.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_tag
      @job_tag = JobTag.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def job_tag_params
      params.expect(job_tag: [ :job_id, :tag ])
    end
end
