require 'pry'
class MP3Importer
  attr_accessor  :path, :files

  def initialize(path)
    @path = path
    @files = []
  end

  def files
    dir = Dir.open path
    dir.each do |file|
     if file.include?(".mp3")
      @files << file.split("/").last
    end
   end
   @files
 end

 def import
    self.files.each{ |filename| Song.new_by_filename(filename) }
  end
end
