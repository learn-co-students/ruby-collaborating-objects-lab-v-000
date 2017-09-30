class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    file_list = Dir.entries(path)
    file_list.collect! do |file|
      file if file.length > 2
    end
    file_list.compact
  end

  def import
    songs = files
    songs.each do |file|
      song = Song.new_by_filename(file)
    end
  end

end
