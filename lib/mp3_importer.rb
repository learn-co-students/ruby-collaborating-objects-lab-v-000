require "pry"

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def path
    @path
  end

  def files
    dir = Dir.entries(path)
    modified = dir.delete_if {|file| !file.end_with?(".mp3")}
    modified
  end

  def import
    self.files.each do |file|
      Song.new_by_filename(file)
    end
  end

end
