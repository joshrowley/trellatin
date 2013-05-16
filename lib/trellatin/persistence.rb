require 'active_support/core_ext'
require 'trello'

module Trellatin

  module Persistence
    extend ActiveSupport::Concern

    included do
      class_attribute :options, :owner, :board, :list
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

        set_trello_objects
      end

      def set_trello_objects
        self.set_owner
        self.set_board
        self.set_list
      end

      def set_owner
        self.owner = Trello::Member.find(options[:owner])
      end

      def set_board
        self.board = owner.boards.select { |b| b.name == options[:board] }.first
      end

      def set_list
        self.list = board.lists.select { |l| l.name == options[:list] }.first
      end

      def trellatin(options = {})
        self.options = options
        configure_client
      end

    end

  end

end
