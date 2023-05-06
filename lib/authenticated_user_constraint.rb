class AuthenticatedUserConstraint
  def matches?(request)
    request.session.has_key?(:user_id)
  end
end
