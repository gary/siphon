class Tasks::SearchesController < ApplicationController
  # GET /tasks/searches
  def index
    @results = Task.with_body_containing(search_params)

    render json: @results.to_json
  end

  private

    def search_params
      params.require(:query)
    end
end
