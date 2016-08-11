require 'pry'

class MP3Importer 
  attr_accessor :path

  def initialize(filepath)
    @path = filepath
  end

  def files
    dir = @path
    files = Dir.entries(dir).select do |file|
      file.to_s.include?("mp3")
    end 
  end

  def import
    ary = self.files
    ary.each do |new_song|
      new_song = Song.new_by_filename(new_song)
      #Artist.all << new_song

    end
  end



end