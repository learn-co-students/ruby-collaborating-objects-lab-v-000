require 'pry'
class MP3Importer

  @@all = []
  attr_accessor :path,  :song, :artist

  def initialize(path)
    @path = path

  end
  def files

    Dir.foreach(@path) do |filename|
      @@all << filename unless filename =~ /^\.\.?$/
    end
    @@all
   #  binding.pry
  end
  def import
    @@all.each do |songs|
      Song.new_by_filename(songs)
        #binding.pry
    end



  end

end
