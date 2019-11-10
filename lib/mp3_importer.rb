require "pry"
class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.entries(@path)
    @files.delete_if { |item| item == "." || item ==".."}
  end

  def import
    #take each file from all the files
    self.files.each do |file|
      #make each song by name
      song = Song.new_by_filename(file)
      #add song's artist into artist.all unless it already exists in artist.all
      #each song is already added to respective artist
      Artist.all << song.artist unless Artist.all.include?(song.artist)

    end
  end

end
