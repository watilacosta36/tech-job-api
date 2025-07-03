module Admin
  class JobsController < BaseController
    def index
      jobs = authorize [ :admin, Jobs::List.all(params) ]

      render json: SerializationService.serialize(jobs, JobSerializer), status: :ok
    end
  end
end
