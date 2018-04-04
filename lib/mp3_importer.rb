require "pry"

class MP3Importer
  attr_reader :path, :files

  def initialize (input_path)
    @path = input_path
    update_files
    self
  end

  # explicity defining writer method so path and files stay in sync
  def path= (input_path)
    @path = input_path
    update_files
    @path
  end

  def import
    files.each do | file_name |
      new_song = Song.new_by_filename(file_name)
      new_song.artist.save  # so test spec can confirm results
    end
  end

  def update_files
    # get all directory entries in the path and then filter for .mp3
    @files = Dir::entries(@path).select { | file_name | file_name.match(".mp3") }
  end
end
