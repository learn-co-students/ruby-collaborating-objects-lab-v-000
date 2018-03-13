class MP3Importer

  attr_accessor :path

  def initialize(file_path)
    @path = file_path

  end

  def files
    mp3_files = []
    files_arr = Dir.glob("#{@path}/*.mp3")
    files_arr.each do |long_file|
      mp3_files << long_file.split("/").last
    end
    mp3_files
    # mp3_files.each do |song_title|
    #   song_title.gsub!(".mp3","")
    # end
  end

  def import
    files.each do |file|
    #  binding.pry
      Song.new_by_filename(file)
    end
  end

end
