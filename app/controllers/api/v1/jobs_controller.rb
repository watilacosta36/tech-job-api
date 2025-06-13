module Api
  module V1
    class JobsController < ApplicationController
      # before_action :set_job, only: %i[ show update destroy ]

      def index
        jobs = Jobs::Search.call(query_params)

        render json: jobs, status: :ok
      end

      # def show = render json: @job

      # def create
      #   @job = Job.new(job_params)

      #   if @job.save
      #     render json: @job, status: :created, location: @job
      #   else
      #     render json: @job.errors, status: :unprocessable_entity
      #   end
      # end

      # def update
      #   if @job.update(job_params)
      #     render json: @job
      #   else
      #     render json: @job.errors, status: :unprocessable_entity
      #   end
      # end

      # def destroy = @job.destroy!

      private
      
      def query_params
        params.expect(job: [:keyword, :location])
      end

      # def set_job
      #   @job = Job.find(params.expect(:id))
      # end

      # def job_params
      #   params.expect(job: [ :company_id, :title, :description, :full_description, :salary_min,
      #     :salary_max, :salary_currency, :employment_type, :experience_level, :location, :is_remote,
      #     :is_active, :expires_at ]
      #   )
      # end
    end
  end
end
