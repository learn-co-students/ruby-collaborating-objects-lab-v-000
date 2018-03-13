class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(self.path).map do |file|
      file.match(/^.+\.mp3$/) ? file : nil
    end.compact
  end

  def import
    artists = []

    self.files.each do |filename|
      parts = filename.split(" - ")
      artist_name = parts[0]
      song = parts[1]

      artists << artist_name
    end
    artists.uniq.each { |artist| Artist.create_by_name(artist) }
  end
end