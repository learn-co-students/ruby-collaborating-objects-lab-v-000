class MP3Importer
  attr_accessor :path

  def initialize(file_path)
    @path = file_path
  end

  def files
    filenames_arr = []
    Dir.foreach(@path) do |file|
      filenames_arr << file if file.size > 2
    end
    filenames_arr
  end

  def import
    self.files.each do |file|
      file_arr = file.gsub(".mp3", "").split(" - ")
      artist = Artist.find_or_create_by_name(file_arr[0].to_s)
      song = Song.new(file_arr[1].to_s)
      artist.add_song(song)
    end
  end

end
