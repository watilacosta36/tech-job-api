module Admin
  class JobPolicy < ApplicationPolicy
    def index?
      true
    end
  end
end
