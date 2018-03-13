require "pry"
class MP3Importer

  attr_accessor :path

  def initialize(path)
  @path = path
  end



  def files

    Dir.glob("#{path}/*{mp3}").map { |d| d.split("/").last}

  end

  def import
    self.files.map {|t| Song.new_by_filename(t) }
  end

end
