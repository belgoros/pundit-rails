class PostPolicy < ApplicationPolicy

  def update?
    user.admin? || user.guest?
  end

  def permitted_attributes
    if user.admin?
      [:body, :title]
    else
      [:body]
    end
  end
end
