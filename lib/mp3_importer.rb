# first attempt 6/25/17
# require 'pry'
#
# class MP3Importer
#   attr_accessor :path
#
#   def initialize(path)
#     @path = path
#   end
#
#   def files
#     list_of_files = Dir.entries(path)
#     list_of_files = list_of_files.select {|f| f.match(/\.mp3/)}
#   end
#
#   def import
#     list = self.files
#     list.each do |f|
#       song = Song.new_by_filename(f) #create new song
#       song.artist.add_song(song) #add the song you created collection
#     end
#   end
# end

# second attempt 7/4/17
require 'pry'

class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    file_list = Dir.glob("#{path}/*.mp3").collect {|f| f.gsub("#{path}/", "")}
    #only selects the mp3 files
    #removes the file path /...mp3s/
  end

  def import
    self.files.each {|f| Song.new_by_filename(f)}
  end

end
