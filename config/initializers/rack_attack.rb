Rack::Attack.safelist('allow from localhost') do |req|
  '127.0.0.1' == req.ip || '::1' == req.ip
end

Rack::Attack.throttle('limit sign_up requests by IP', limit: 10, period: 60.seconds) do |req|
  if req.path == '/api/v1/auth/sign_up' && req.post?
    req.ip
  end
end

Rack::Attack.throttled_responder = lambda do |request|
  [ 503, {}, ["Limite de requisições atingido. Tente novamente mais tarde.\n"]]
end