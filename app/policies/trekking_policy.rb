class TrekkingPolicy < ApplicationPolicy
  class Scope < Scope
    # def resolve
    #   scope.all
    # end
  end

  def new?
    return true
  end

  def create?
    true
  end
end
