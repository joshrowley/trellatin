# Trellatin

Trellatin lets you easily convert Ruby objects into Trello cards.

## Installation

Add this line to your application's Gemfile:

    gem 'trellatin'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install trellatin

## Usage

    require 'trellatin'

Set global configuration options. You could put this in `config/initializers/trellatin.rb` if using Rails:

```ruby
Trellatin.configure do |config|
  config.app_id = ENV['APP_ID']
  config.token  = ENV['TOKEN']
end
```

In any class:

```ruby
class Submission

  include Trellatin::Persistence
  
  trellatin({
    owner:   'joshuarowley',
    board:   'test',
    list:    'To Do',
    app_key:      ENV['APP_KEY'],   # optional if defined in initializer
    token:        ENV['TOKEN'],     # optional if defined in initializer
    name:         :some_method,     # optional, defaults to :name
    description:  :another_method   # optional, defaults to :description
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

Submission.new.save_card  #=> creates card on Trello list with 'foobar' name,
                          #   and 'Hello World!' in the description
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
