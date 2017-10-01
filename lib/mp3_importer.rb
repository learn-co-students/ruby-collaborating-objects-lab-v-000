require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = Dir.entries(self.path)
    files.select{|file| file.match(/.+[mp3]/)}
  end

  def import
    entries = self.files
    artist_song = {}
    new_artist_song = {}
    artist_object = nil
    song_object = nil

    entries.each {|entry| artist_song[entry[/^([^-]+)\w/]] = entry[/- .+ -/]}

    artist_song.each do |artist, song|
      song.slice!("- ")
      song.slice!(" -")
      new_artist_song[artist] = song
      end

      new_artist_song.each do |artist, song|
        artist_object = Artist.new(artist)
        song_object = Song.new(song)
        artist_object.add_song(song_object)
        artist_object.save
      end
    
    end


end
