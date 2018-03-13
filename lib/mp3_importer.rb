require "pry"

class MP3Importer
  attr_accessor :path

  def initialize(file_path)
    @path = file_path
  end

  def files
    files = []

    Dir["#{@path}/*"].each do |file_path|
      files << File.basename(file_path)
    end

    files
  end

  def import
    self.files.each do |mp3_file|
      new_song = Song.new_by_filename(mp3_file)
    end
  end
end
