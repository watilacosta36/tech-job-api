class JobRequirementsController < ApplicationController
  before_action :set_job_requirement, only: %i[ show update destroy ]

  # GET /job_requirements
  def index
    @job_requirements = JobRequirement.all

    render json: @job_requirements
  end

  # GET /job_requirements/1
  def show
    render json: @job_requirement
  end

  # POST /job_requirements
  def create
    @job_requirement = JobRequirement.new(job_requirement_params)

    if @job_requirement.save
      render json: @job_requirement, status: :created, location: @job_requirement
    else
      render json: @job_requirement.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /job_requirements/1
  def update
    if @job_requirement.update(job_requirement_params)
      render json: @job_requirement
    else
      render json: @job_requirement.errors, status: :unprocessable_entity
    end
  end

  # DELETE /job_requirements/1
  def destroy
    @job_requirement.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_requirement
      @job_requirement = JobRequirement.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def job_requirement_params
      params.expect(job_requirement: [ :job_id, :requirement, :is_mandatory ])
    end
end
