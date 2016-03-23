require 'pry'

class MP3Importer


  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("#{@path}/*.mp3").collect {|file| file.split('/').last }
  end

  def path
    @path
  end

  def import
    self.files.each {|file| Song.new_by_filename(file) }
  end
#binding.pry
end
