require "pry"
class MP3Importer
  attr_accessor :path
  @@file_names = []

  def initialize(path)
    @path = path
  end

  def files
    Dir.foreach(self.path) do |filename|
      filename.end_with?(".mp3") ? @@file_names << filename : nil
    end
    @@file_names
  end

  def import
    @@file_names.each {|file_name| Song.new_by_filename(file_name) }
  end
end
