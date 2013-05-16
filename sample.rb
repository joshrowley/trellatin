require_relative 'lib/trellatin'

class Submission
  include Trellatin::Persistence

  trellatin ({
    owner:        'joshuarowley',
    board:        'trello',
    list:         'To Do',
    app_key:      ENV['APP_KEY'],
    token:        ENV['TOKEN']
  })

  def name
    'Finish Trellatin'
  end

  def description
    'open source that shiet!'
  end

end

Submission.new.save_card
