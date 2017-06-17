require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(test_music_path)
    @path = test_music_path
  end

  def files
    temp = []
    collection = []
    temp = Dir.glob("#{path}/*.mp3")
    temp.each do |file|
      collection << file.split('mp3s/')[1]
    end
    return collection
  end

  def import
    temp = []
    collection = []
    temp = Dir.glob("#{path}/*.mp3")
    temp.each do |file|
      collection << file.split('mp3s/')[1]
    end
     collection.each do |song|
       artist = song.split('-')[0].strip
       title = song.split('-')[1].strip
       genre = song.split('-')[2].strip
       #binding.pry
       Artist.find_or_create_by_name(artist)
       Artist.find_or_create_by_name(artist).songs << title
     end
  end

end
