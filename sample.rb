require_relative 'lib/trellatin'

class Submission
  include Trellatin::Persistence

  trellatin ({
    owner:        'joshuarowley',
    board:        'trello',
    list:         'To Do',
    app_key:      '08945e3bfcc0d9d76fe12490be3c7c6c',
    token:        '46d4c720a6b2fa2aeef33a0abbce358070d951e35c0ea42fc5835887b47e7fe9',
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
