class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
    @current_mp3s = []
  end

  def import
    files_to_import = files

    files.each do |file|
      this_file = file.chomp(".mp3")
      file_arr = this_file.split(" - ")
      song = Song.new(file_arr[1])
      artist = Artist.find_or_create_by_name(file_arr[0])
      song.artist = artist
    end
  end


  def files
    Dir.foreach(@path) do |file| 
      if file.end_with?(".mp3")
        @current_mp3s << file
      end
    end

    @current_mp3s
  end



end