class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def import
    binding.pry
    files.map do |filename|
      Song.new_by_filename(filename)
    end
  end

  def files
    #binding.pry
    Dir.entries("#{@path}").select do |filename|
      filename.include?("mp3")
    end
  end

end
