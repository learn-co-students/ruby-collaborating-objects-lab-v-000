require 'pry'

class MP3Importer

attr_accessor :path

  def initialize(path)
    @path = path
    @files = []
  end

  def files
    @path += "/*.mp3" unless @path.split("/").last == "*.mp3"

    Dir[@path].each { |el| @files << el.split("/").last }
    @files
    # binding.pry
  end

  def import
    if @files.length == 0
      self.files
    end

    @files.each do |i|
      Song.new_by_filename(i)
    end
  end
end
