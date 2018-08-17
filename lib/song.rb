require "pry"
class Song
  attr_accessor :name, :artist

    def initialize(name)
      @name=name
    end


    def self.new_by_filename(file) #file from MP3Importer class
      song_i = Song.new(file.split("-")[1].strip)  #create song instance using song string
      song_i.artist_name=(file.split("-")[0].strip) #run artist_name method using artist string
      song_i
    end

    def artist_name=(artist_string)
      self.artist=Artist.find_or_create_by_name(artist_string) #finds / creates artist instance AND adds artist instance to song instance
      self.artist.add_song(self) #adds song instance to artist instance
    end


end
