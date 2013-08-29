require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Twingl < OmniAuth::Strategies::OAuth2

      option :name, "twingl"

      option :client_options, { :site => "http://api.twin.gl" }

      uid { raw_info['id'] }

      info do
        {
          :name => raw_info["name"]
        }
      end

      extra do
        {
          :raw_info => raw_info
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/users/me').parsed
      end
    end
  end
end
