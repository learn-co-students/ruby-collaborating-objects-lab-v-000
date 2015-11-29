class MP3Importer
  attr_accessor :path, :files
  def initialize(file_path)
    @path = file_path
    @files = Dir["#{path}/*.mp3"]
    @files.map! do |song_file|
      song_file = song_file.split("/").last
      Song.new_by_filename(song_file)
      song_file
    end
  end

  def import
    files.each do |song_file|
      Song.new_by_filename(song_file)
    end
  end


end
