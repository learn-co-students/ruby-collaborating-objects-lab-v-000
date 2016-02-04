class MP3Importer
  attr_accessor :path, :file_name

  def initialize(path)
    @path = path
  end

  def files
    dir = []
    Dir.glob("./spec/fixtures/mp3s/*mp3") do |mp3_file|
      dir << mp3_file
    end
    dir.collect do |file|
      file.gsub("./spec/fixtures/mp3s/","")
    end
  end

  def import
    artists = []
    self.files.collect do |file|
      artists << file.split(" - ")[0]
    end
    artists.uniq.each do |artist|
      Artist.all << artist
    end
  end

end