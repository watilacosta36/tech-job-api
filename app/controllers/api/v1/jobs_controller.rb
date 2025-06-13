module Api
  module V1
    class JobsController < ApplicationController
      def index
        jobs = Jobs::Search.call(query_params)
        serialized_jobs = Panko::ArraySerializer.new(jobs, each_serializer: JobSerializer).to_json

        render json: serialized_jobs, status: :ok
      end

      private
      
      def query_params = params.expect(job: [:keyword, :location])
    end
  end
end
