require 'pry'
class MP3Importer
  attr_accessor :path, :files
  @@files = []
  def initialize(path)
    @path = path

  end

  def files
    Dir.foreach(@path) do |file|
      if file.include?("mp3")
        # song_data = file.split(" - ")
        # song_data[2].slice!(".mp3")
        @@files << file
      end
    end
    @@files
  end

  def import
    @@files.each do |filename|
      Song.new_by_filename(filename)
    end
  end

end
