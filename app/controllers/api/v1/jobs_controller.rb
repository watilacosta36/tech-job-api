module Api
  module V1
    class JobsController < ApplicationController
      def index
        jobs = Jobs::Search.call(query_params)

        render json: SerializationService.serialize(jobs, JobSerializer), status: :ok
      end

      private
      
      def query_params = params.expect(job: [:keyword, :location])
    end
  end
end
