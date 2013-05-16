require 'active_support/core_ext'
require 'trello'

module Trellatin

  module Persistence
    extend ActiveSupport::Concern

    included do
      class_attribute :options
      self.options = {}
    end

    def save
      Trello::Card.create(
        name:         send(self.class.options[:name]),
        description:  send(self.class.options[:description]),
        list_id:      self.class.options[:list]
      )
    end


    module ClassMethods

      def configure_client
        if options[:app_key] && options[:token]

          Trello.configure do |config|
            config.developer_public_key = options[:app_key]
            config.member_token         = options[:token]
          end

        end
      end

      def trello_owner
        Trello::Member.find(options[:owner])
      end

      def trello_board
        Trello::Board.find(options[:board])
      end

      def trello_list
        Trello::List.find(options[:list])
      end

      def trellatin(options = {})
        self.options = options
        self.configure_client
      end

    end

  end

end
