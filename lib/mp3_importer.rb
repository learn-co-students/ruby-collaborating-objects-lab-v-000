<<<<<<< HEAD
require 'pry'

=======
>>>>>>> be1c48b7ae6a8194bfc92c0ca34af8bd5a2597b2
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
<<<<<<< HEAD
     Dir.glob("./#{path}/*.mp3").collect{|file| file.gsub("./#{path}/", '')}
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end
=======
    #loads mp3 files in the path directory
    #Dir.glob path/*.mp3
    #gsub
  end

>>>>>>> be1c48b7ae6a8194bfc92c0ca34af8bd5a2597b2
end
