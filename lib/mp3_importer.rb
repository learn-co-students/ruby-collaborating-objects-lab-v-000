class MP3Importer
  attr_accessor :path, :files

  def initialize(test_music_path)
    @path = test_music_path
    @files = []
    files_with_paths = Dir["#{test_music_path}/*.mp3"]
    files_with_paths.each do |file_with_path|
      @files << file_with_path.split("/").last
    end
    puts "@files is #{@files}"
  end

  def files
    @files
  end

  def import
    @files.each do |filename|
      Song.new_by_filename(filename)
    end
    puts "--- Artist.all.size is #{Artist.all.size}"
  end

=begin
  def import
    @files.each do |filename|
      song_name = filename.split(" - ")[1]
      artist_name = filename.split(" - ")[0]
      Song.new(song_name, artist_name)
    end
  end
=end

end
