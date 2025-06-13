class JobBenefitsController < ApplicationController
  before_action :set_job_benefit, only: %i[ show update destroy ]

  # GET /job_benefits
  def index
    @job_benefits = JobBenefit.all

    render json: @job_benefits
  end

  # GET /job_benefits/1
  def show
    render json: @job_benefit
  end

  # POST /job_benefits
  def create
    @job_benefit = JobBenefit.new(job_benefit_params)

    if @job_benefit.save
      render json: @job_benefit, status: :created, location: @job_benefit
    else
      render json: @job_benefit.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /job_benefits/1
  def update
    if @job_benefit.update(job_benefit_params)
      render json: @job_benefit
    else
      render json: @job_benefit.errors, status: :unprocessable_entity
    end
  end

  # DELETE /job_benefits/1
  def destroy
    @job_benefit.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_benefit
      @job_benefit = JobBenefit.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def job_benefit_params
      params.expect(job_benefit: [ :job_id, :benefit ])
    end
end
