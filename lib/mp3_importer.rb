require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

#./spec/fixtures/mp3s
  def files
    Dir[@path+"/*.mp3"].map do
    |filename| filename.split("/").last
    end
  end

  def import
    self.files.each {|file| Song.new_by_filename(file)}
  end



end
