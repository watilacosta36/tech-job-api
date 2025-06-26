module Jobs
  class List
    def self.all(params)
      Job.order(created_at: :desc).page params[:page]
    end
  end
end
