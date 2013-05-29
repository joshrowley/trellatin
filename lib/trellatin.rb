require "trellatin/version"
require 'trellatin/config'
require 'trellatin/persistence'

module Trellatin
  extend self

  def configure
    block_given? ? yield(Trellatin::Config) : Trellatin::Config
  end

end
