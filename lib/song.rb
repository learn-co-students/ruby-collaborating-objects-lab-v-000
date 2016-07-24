require 'pry'
class Song
attr_accessor :name, :artist
@@all = []

def initialize(name)
  @name = name
  @@all<<self
end


def self.all
  @@all
end



  def self.create(songname)
    newartist = Artist.new(artistname)
    @@all<<newartist
  end

    def self.find_or_create_by_name(artistname)
      self.find(artistname) || self.create(artistname)
    end

def self.new_by_filename(songandartist)
  split_array = songandartist.split(/\.mp3| - /)
  newsong = Song.new(split_array[1])
  newsong.artist = Artist.find(split_array[0]) || Artist.create(split_array[0])
  newsong
end


  # split_array = songandartist.split(/\.mp3| - /)
  # Artist.find(split_array[0]) || Artist.create(split_array[0])
  # newsong = Song.new(split_array[1])
  #   Artist.all.each do |artist|
  #     if artist.name == split_array[0]
  #     artist.add_song(newsong)
  #     end
  #   end
  # end

end

#file_name = 'Michael Jackson - Black or White - pop.mp3'

 # og_file = MP3Importer.new_file_only(songandartist)
    # binding.pry



