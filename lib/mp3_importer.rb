class MP3Importer

  attr_accessor :path, :filename_info
  # binding.pry

  def initialize(path)
    @path = path
    @filename_info = []

  end

  def files
    @filename_info = Dir["#{@path}/*.mp3"]
    # binding.pry

    @filename_info.map {|i| i.slice! "#{@path}/"}
    @filename_info
  end

  def import
    files
    # binding.pry
    Song.new_by_filename(@filename_info)
  end

end
