class MP3Importer

  attr_accessor :path, :songs

  def initialize(path)
    @path = path
  end

  def files
    file_array = Dir.glob("./spec/fixtures/mp3s/*.mp3")
    @@new_array = []
    file_array.each do |file|
      file.slice!(0,21)
      @@new_array << file
    end
    @@new_array
  end



  def import
    @@artist_array = []
    @@artist_array << @@new_array[0]
    @@artist_array.each do |file|
      Artist.all << Song.new_by_filename(file)
    end
  end

end
