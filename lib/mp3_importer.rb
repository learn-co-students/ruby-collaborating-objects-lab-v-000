class MP3Importer
  attr_accessor :path, :filename, :artist_name

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(path).select {|file| file.end_with?(".mp3")}
  end

  def import
    #  binding.pry
    files = self.files
    files.collect do |song|
      Song.new_by_filename(song)
    end
  end

end