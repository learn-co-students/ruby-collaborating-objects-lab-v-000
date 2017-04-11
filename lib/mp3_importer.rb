require "pry"
class MP3Importer
  attr_accessor :path, :filenames
  @@filenames = []
  def initialize (test_music_path)
    @path=test_music_path

  end
  def files
    @@filenames=Dir.entries(path).grep(/[\w\s\d-]*.mp3\z/)
  end
  def import
    @@filenames.each do|mp3|
      Song.new_by_filename(mp3)
    end
  end
end
