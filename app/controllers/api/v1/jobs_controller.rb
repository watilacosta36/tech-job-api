module Api
  module V1
    class JobsController < ApplicationController
      def index
        jobs = Jobs::Search.call(query_params)

        render json: SerializationService.serialize(jobs, JobSerializer), status: :ok
      end

      def create
        result = Jobs::Create.call(job_params)

        if result.success?
          render json: SerializationService.serialize(result.job, JobSerializer), status: :created
        else
          render json: { errors: result.errors }, status: :unprocessable_entity
        end
      end

      def show
        job = Job.find(params[:id])

        render json: SerializationService.serialize(job, JobSerializer), status: :ok
      end

      private

      def query_params = params.expect(job: [:keyword, :location])

      def job_params
        params.require(:job).permit(
          :title,
          :description,
          :full_description,
          :salary_min,
          :salary_max,
          :salary_currency,
          :employment_type,
          :experience_level,
          :location,
          :is_remote,
          :company_id,
          :is_active,
          :expires_at,
          job_tags_attributes: [:tag, :_destroy],
          job_requirements_attributes: [:requirement, :_destroy],
          job_benefits_attributes: [:benefit, :_destroy]
        )
      end
    end
  end
end
