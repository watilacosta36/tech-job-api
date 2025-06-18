module Api
  module V1
    class JobApplicationsController < ApplicationController
      def create
        job_application = JobApplication.new(job_application_params)

        if job_application.save
          render json: job_application, status: :created
        else
          render json: job_application.errors, status: :unprocessable_entity
        end
      end

      private

      def set_job_application
        @job_application = JobApplication.find(params.expect(:id))
      end

      def job_application_params
        params.expect(job_application: [ :job_id, :candidate_name, :candidate_email, :candidate_phone, :resume,
                                         :cover_letter, :status, :applied_at ])
      end
    end
  end
end
