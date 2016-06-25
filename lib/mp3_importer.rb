require "pry"
class MP3Importer

attr_accessor :path, :songs

  def initialize(path) #accepts a file path to parse mp3 files from
    @path = path
  end

  def files
    files = Dir.entries(path) #put the list of files in the files directory!
      files.delete_if do |file| #iterate and delete if there are any ".." or "."
        file == ".." || file =="."
      end
  end

  def import
    songs = Song.new_by_filename(files).name
    songs.each do | song_item|
      song_item.split("-").first
    # songs[2].split("-").first
    end

    # binding.pry
    # song= Song.new(files)
    # song.artist = self
    # song
  end

end
