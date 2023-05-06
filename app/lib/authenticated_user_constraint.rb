class AuthenticatedConstraint
  def matches?(request)
    request.env['warden'].authenticated?(:user)
  end
end
