require "pry"
class MP3Importer
  attr_accessor :path, :filenames
  @@filenames = []
  def initialize (test_music_path)
    @path=test_music_path

  end
  def files
    #filtering only mp3 files with artist, song and genre in their name.
    @@filenames=Dir.entries(path).grep(/[\w\s-][\w\s-][\w\s].mp3\z/)
  end

  def import
    @@filenames.each do|filename|
      Song.new_by_filename(filename)
    end
  end
end
