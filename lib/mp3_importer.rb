# require_relative '../spec/fixtures/mp3s'

class MP3Importer
  # extend Lovebot
  attr_accessor :path
  @@files = []

  def initialize(path)
    @path = path
    # @@files = []
  end

  def files(path)

    @@files << path
  end

  def import
    Dir["../spec/fixtures/mp3s"].each {|file| @@files << file }
    # binding.pry
  end
end
