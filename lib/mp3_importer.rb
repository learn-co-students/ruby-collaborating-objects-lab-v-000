require 'pry'


class MP3Importer
  attr_accessor :path, :songs

  def initialize(path)
    @path = path
  end



  def files
    song_list = []
    Dir['./db/mp3s/*.rb']
  end
end
