# require_relative '../spec/fixtures/mp3s'

class MP3Importer
  # extend Lovebot
  attr_accessor :path
  @@files = []

  def initialize(path)
    @path = path
  end

  def files

    # binding.pry
  end

  def import

    # binding.pry
  end
end

# Dir["../spec/fixtures/mp3s"].each {|file| @@files << file }
