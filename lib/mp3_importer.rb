class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(path).select { |file| file.include?(".mp3") }
  end

  def import
    self.files.each do |file|
      # binding.pry
      Song.new_by_filename(file)
      # new_artist = new_song.artist
      # Artist.all << new_artist unless Artist.all.include?(new_artist)
    end
  end

end
