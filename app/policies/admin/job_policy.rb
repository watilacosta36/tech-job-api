module Admin
  class JobPolicy < ApplicationPolicy
    def index? = user.admin?
  end
end
