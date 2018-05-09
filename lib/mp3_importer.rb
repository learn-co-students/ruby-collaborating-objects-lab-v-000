require 'pry'
class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end

  def files
    files = Dir.glob("#{path}/*").collect { |file|
      file.gsub("#{path}/","") #path and the / after gets replaced by an empty string
    }
  end  #regex is used to access the path
    #gsub is a method that REPLACES things "hello".gsub("h","1") -> "1ello"

    #my other way to solve down here
    #path is already attribute and a method
    #file_list = Dir.entries("#{path}")
    #and all the extra stuff the path may give
    #Dir.entries is how to use the path that was given in the parameter
    #file_list = file_list.delete_if{|i| i == ".." || i == "." }
    #so @ isn't needed

  def import
    file_list = self.files
    file_list.collect do |file|
      song = Song.new_by_filename(file)
    end
  end

end
