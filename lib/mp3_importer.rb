
class MP3Importer
  attr_accessor :path

  def initialize(filepath)
    @path = filepath
  end

  def files
    @files = Dir.entries(@path)
    @files.delete_if {|file| file == "."}
    @files.delete_if {|file| file == ".."}
    @files
  end

  def import
    self.files.each do |files|
      song = Song.new_by_filename(files)
      Artist.all << song.artist unless Artist.all.include?(song.artist)
    end 
  end
end
