require 'pry'
class MP3Importer

  attr_accessor :path

  def initialize(filename)
    @path = filename
  end

  def files
    @dbfiles = Dir.entries(@path)
    @dbfiles.delete_if {|file_name| file_name == "." || file_name == ".."}
  end

  def import
    self.files.each do |file|
      song = Song.new_by_filename(file)
      Artist.all << song.artist unless Artist.all.include?(song.artist)
    end
  end

end
