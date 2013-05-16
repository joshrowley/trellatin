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

      include Trellatin::Persistence
      
      trellatin({
        owner:   'joshuarowley',
        board:   'test',
        list:    'To Do'
        app_key:      ENV['APP_KEY'],
        token:        ENV['TOKEN'],
        name:         :some_method,
        description:  :another_method
      })

      def some_method
        # method to be saved in a card's title field
        'foobar'
      end

      def another_method
        # method to be saved in a card's description
        'Hello World!'
      end

    end

    Submission.new.save #=> creates card on Trello list with 'foobar' name,
                        #   and 'Hello World!' in the description

Not yet implemented, when not passing in name & description arguments, 
Trellatin will look for an instance method called 'name' for the card 
name and 'description' for the card description.


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
