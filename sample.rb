require_relative 'lib/trellatin'
require 'debugger'

class Submission
  include Trellatin::Persistence

  trellatin ({
    owner:      'joshuarowley',
    board:      '5192a81f88dbd6d71100048e',
    list:       '5192a81f88dbd6d71100048f',
    app_key:    '08945e3bfcc0d9d76fe12490be3c7c6c',
    token:      '5e28c5357f8d3c20654a123c452f8893887d1a38c8bd5745fc0219fce8828478',
  })

  def name
    'test'
  end

  def description
    'description'
  end

end

puts Submission.options
puts Submission.trello_list.inspect
