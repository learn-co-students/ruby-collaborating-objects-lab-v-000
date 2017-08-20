class MP3Importer

  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    files = Dir.glob("#{path}/*.mp3")
    files.map { |file| file.gsub(/\A.\/spec\/fixtures\/mp3s\//, '') }
  end

  def import
    library = self.files
    library.each do |file_name|
      artist_name = file_name.split(' - ')[0]
      artist = Artist.find_or_create_by_name(artist_name)
      song = Song.new_by_filename(file_name)
      artist.add_song(song)
    end
  end
end

# ["./db/mp3s"]

  #test_music_path = "./spec/fixtures/mp3s"
  #music_importer = MP3Importer.new(test_music_path)
  #music_importer.files.size

  test_music_path = "./spec/fixtures/mp3s"
  music_importer = MP3Importer.new(test_music_path)
  music_importer.import
