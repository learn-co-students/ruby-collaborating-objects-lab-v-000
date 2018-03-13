require 'pry'

class MP3Importer
  attr_accessor :path, :song

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.glob(@path + "/*.mp3")
    @files.collect! {|file|
      file.split('/')[4]
    }
    @files
  end

  def import
    self.files.each {|file|
      artist_name = file.split('-')[0].strip!
      artist = Artist.new(artist_name)
      Artist.all << artist.name
    }
    Artist.all.uniq!
  end

end
