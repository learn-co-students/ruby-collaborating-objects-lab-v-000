require'pry'

class MP3Importer
  attr_accessor :path
  def initialize(filepath)
    @path = filepath
  end
  def files
    #the bottom code does the following Dir.entries("") this takes in a string of a file path and will convert the files within into an array. But this array will also give you 2 additional elements of ".." and ".".  The delete.if portion of the code removes the additional elements
      Dir.entries("#{path}").delete_if {|x| x==".." || x=="."}
  end


  def self.class_variable_set(class_variable, array)

  end

  def import
    files.each { |file|  Song.new_by_filename(file)}

  end
end


#     ruby lib/mp3_importer.rb
