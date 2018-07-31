require 'pry'
class MP3Importer
  
  # attr_accessor :artist
  attr_reader :path
  
 def initialize(path)
    @path = path
  end
  
  def files
    @files = Dir.glob("#{self.path}/*mp3").collect {|file| file.gsub("#{self.path}/", "")}
  end
  
 def import
    files.each{|file| Song.new_by_filename(file)}

 end
 
# Method from Song
  # def self.new_by_filename(file_name)
  #   artist, song = file_name.split(" - ")
  #     new_song = self.new(song)
  #     new_song.artist_name = artist
  #     new_song.save
  #   end

end