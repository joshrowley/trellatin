require_relative 'lib/trellatin'

class Submission
  include Trellatin::Persistence

  trellatin ({
    owner:        'joshuarowley',
    board:        'trello',
    list:         'To Do',
    app_key:      ENV['APP_KEY'],
    token:        ENV['TOKEN'],
    name:         :name,
    description:  :description
  })

  def name
    'test'
  end

  def description
    'description'
  end

end

puts Submission.owner.username
puts Submission.board.name
puts Submission.list.name
