require 'omniauth/strategies/oauth'

module OmniAuth
  module Strategies
    class Redmine < OmniAuth::Strategies::OAuth

      def consumer
        options.client_options = {
          :authorize_url => "#{redmine_base_url}oauth/authorize",
          :request_token_url => "#{redmine_base_url}oauth/request_token",
          :access_token_url => "#{redmine_base_url}oauth/access_token"
        }
        super
      end

      uid { raw_info['user']['id'] }

      info do
        {
          'nickname' => raw_info['user']['mail'],
          'email' => raw_info['user']['mail'],
          'name' => "#{raw_info['user']['lastname']} #{raw_info['user']['firstname']}"
        }
      end

      def raw_info
        @raw_info ||= MultiJson.decode(access_token.get("#{redmine_base_url}oauth/user_info.json").body)
      end

      private
      def redmine_base_url
        options.redmine_base_url << '/' unless options.redmine_base_url.end_with?('/')
        options.redmine_base_url
      end
    end
  end
end
