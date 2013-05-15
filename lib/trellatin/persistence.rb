require 'active_support/core_ext'

module Trellatin

  module Persistence
    extend ActiveSupport::Concern

    included do
      class_attribute :options
      self.options = {}
    end

    module ClassMethods

      def trellatin(options = {})
        self.options = options
      end

    end

  end

end
