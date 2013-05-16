require_relative 'lib/trellatin'

class Submission
  include Trellatin::Persistence

  trellatin ({
    owner:        'joshuarowley',
    board:        '5192a81f88dbd6d71100048e',
    list:         '5192a81f88dbd6d71100048f',
    app_key:      ENV['APP_KEY'],
    token:        ENV['TOKEN'],
    name:         :name, # method that will save as the card name
    description:  :description #method that will save as the card description
  })

  def name
    'test'
  end

  def description
    'description'
  end

end

Submission.new.save
