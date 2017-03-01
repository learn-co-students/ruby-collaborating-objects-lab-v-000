class MP3Importer

  def initialize(path)
    @path = path
  end

  def path
    @path
  end

  def files
    file_array = []
    files = Dir.open @path
    files.each do |file|
      if file.include?(".mp3")
      file_array << file
      end
    end
    file_array
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
    #binding.pry
  end

end
