require 'pry'
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
    #binding.pry
  end

  def files
  arr = Dir.entries(@path).select {|n| n.include?("mp3")}
  #binding.pry
 end

 def import
   files.each {|file| Song.new_by_filename(file)}
end



end
