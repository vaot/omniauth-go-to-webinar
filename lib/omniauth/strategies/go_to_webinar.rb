require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class GoToWebinar < OmniAuth::Strategies::OAuth2

      option :name, "gotowebinar"

      option :client_options, {
        :site => "https://api.citrixonline.com",
        :authorize_url => "/oauth/authorize",
        :token_url => "/oauth/access_token"
      }

      info do
        {}.tap do |hash|
          hash[:organizer_key] = access_token["organizer_key"]
          hash[:account_key] = access_token["account_key"]
          hash[:account_type] = access_token["account_type"]
          hash[:firstname] = access_token["firstName"]
          hash[:lastname] = access_token["lastName"]
          hash[:email] = access_token["email"]
        end
      end

    end
  end
end

OmniAuth.config.add_camelization 'gotowebinar', 'GoToWebinar'