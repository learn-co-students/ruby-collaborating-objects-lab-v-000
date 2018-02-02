require "pry"

class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.entries(path).select{|f| f.include?(".mp3")}
  end

  def import
    # binding.pry
    if @files != nil
      @files.each{ |filename| Song.new_by_filename(filename) }
    end
  end
end
