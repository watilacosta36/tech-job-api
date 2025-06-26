module Jobs
  class Search
    attr_reader :keyword, :location

    def self.call(params) = new(params).results

    def initialize(params)
      @keyword = params[:keyword]
      @location = params[:location]
    end

    def results = Job.search(query, fields: %w[title^10 description], where: filters)

    private

    def query = keyword.presence || "*"

    def filters
      return {} unless location.present?

      { location: }
    end
  end
end
