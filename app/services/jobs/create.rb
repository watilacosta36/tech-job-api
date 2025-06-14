module Jobs
  class Create
    attr_reader :params

    def self.call(params) = new(params).result

    def initialize(params) = @params = params

    def result
      job = Job.new(params)

      if job.save
        OpenStruct.new(success?: true, job: job)
      else
        OpenStruct.new(success?: false, errors: job.errors.full_messages)
      end
    end
  end
end
