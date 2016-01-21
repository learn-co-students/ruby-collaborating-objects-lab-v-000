

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
   @files = Dir["#{@path}/*.mp3"]
   @files = @files.collect do |x| File.basename(x) end

  end

  def import
   
   files.each {|file| Song.new_by_filename(file)}
 
  end
end