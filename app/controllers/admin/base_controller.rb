module Admin
  class BaseController < ApplicationController
    include Pundit::Authorization

    after_action :verify_authorized
  end
end
