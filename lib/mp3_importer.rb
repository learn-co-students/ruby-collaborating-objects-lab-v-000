require_relative "song.rb"

class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = []
  end

  def files
    @files = Dir.entries(self.path).select do |track|
      track.include?(".mp3")
    end
  end

  def import
    self.files.collect do |file|
      Song.new_by_filename(file)
    end
  end

end