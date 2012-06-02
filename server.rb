require 'goliath'
require 'em-synchrony/em-http'

class Github < Goliath::API
  use Goliath::Rack::Params             # parse query & body params
  use Goliath::Rack::Formatters::JSON   # JSON output formatter
  use Goliath::Rack::Render             # auto-negotiate response format

  def response(env)
    [200, {'X-Goliath' => 'Proxy'}, 'hello']
  end
end


