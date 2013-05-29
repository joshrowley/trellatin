require 'trellatin/config/options'

module Trellatin
  module Config
    extend self
    extend Options

    option :app_key
    option :token

  end
end
