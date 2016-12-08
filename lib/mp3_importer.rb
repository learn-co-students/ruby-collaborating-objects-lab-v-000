# require "../../spec/fixtures/mp3s"

class MP3Importer
  attr_accessor :path
  @@files = []

  def initialize(path)
    @path = path
    # @@files = []
  end

  def files
    @@files
  end

  def import
    Dir["../spec/fixtures/mp3s"].each {|file| @@files << file }
    # binding.pry
  end
end
