# Trellatin

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'trellatin'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install trellatin

## Usage

    require 'trellatin'

In any class:

    class Submission

      include Trellatin
      
      trellatin user: 'joshuarowley', board: 'test', list: 'To Do'

      def title
        # method to be saved in a card's title field
      end

      def description
        # method to be saved in a card's description
      end

    end

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
