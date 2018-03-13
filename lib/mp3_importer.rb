class MP3Importer
  attr_accessor :path

  def initialize(file_path)
    @path = file_path
  end

  def files
    @mp3_dir = Dir[@path + "/*.mp3"]
    @mp3_dir.map do |file_path|
      file_path.split(/([^\/]+$)/)[1]
    end
  end

  def import
    files.each do |file|
      song = Song.new_by_filename(file)
      song
    end
  end
end
