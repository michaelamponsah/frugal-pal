class AuthenticatedUserConstraint
  def matches?(request)
    request.session.key?(:user_id)
  end
end
