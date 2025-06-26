module Admin
  class JobsController < BaseController
    def index
      jobs = authorize Jobs::List.all(params)

      # render json: SerializationService.serialize(jobs, JobSerializer), status: :ok
      render json: jobs, status: :ok
    end
  end
end
