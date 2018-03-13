require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = Dir.entries(@path)
    mp3s = []

    files.map do |file_name|
      if file_name.end_with?(".mp3")
        mp3s << file_name
      end
    end

   mp3s
  end

  def import
    self.files.each {|file_name| Song.new_by_filename(file_name)}
  end
end
