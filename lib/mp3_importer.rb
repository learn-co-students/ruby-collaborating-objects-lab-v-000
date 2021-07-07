require "pry"
class MP3Importer

attr_accessor :import, :path

  def initialize(path)
    @path = path
  end

  def files
  local = Dir.glob("#{@path}/*.mp3").map do |item|
      item.gsub("#{@path}/", "")

    end
  end

  def import

    self.files.each do |item|
     new_song = Song.new_by_filename(item)
     new_artist = Artist.new_by_filename(item)
     
   end
  end
end
