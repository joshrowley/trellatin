require_relative 'lib/trellatin'

class Submission
  include Trellatin::Persistence

  trellatin ({
    username: 'joshuarowley',
    board:    'test',
    list:     'To Do'
  })
end

puts Submission.options
