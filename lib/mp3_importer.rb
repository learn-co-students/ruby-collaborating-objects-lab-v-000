class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.glob("#{path}/*.mp3").collect do |fp|
      fp.gsub("#{path}/", "")
    end
    @files
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end

end

test_music_path = "./spec/fixtures/mp3s"
music_importer = MP3Importer.new(test_music_path)
music_importer.files
