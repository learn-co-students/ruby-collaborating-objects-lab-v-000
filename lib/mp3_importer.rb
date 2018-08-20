require 'pry'

class MP3Importer
  attr_accessor :path, :files

  def initialize(filepath)
    @path = filepath
    @files = []
  end

  def files
    Dir.glob("#{@path}.mp3").each do |file|
      @files << file
    end

  end

end
