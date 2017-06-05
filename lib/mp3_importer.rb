require'pry'

class MP3Importer
  #each class should have a path attribute for where the files are located
  attr_accessor :path
  #when creating a new instance variable of this class, we should take in an argument of the filepath and set that to the attribute
  def initialize(filepath)
    @path = filepath
  end

  def files
    #lets read the filepath directory and make an array of the file names in the folder
    #the bottom code does the following Dir.entries("") this takes in a string of a file path and will convert the files within into an array. But this array will also give you 2 additional elements of ".." and ".".  The delete.if portion of the code removes the additional elements
      Dir.entries("#{path}").delete_if {|x| x==".." || x=="."}
  end

#the files method will yield an array, lets enumerate through each file, and create a new song using the new_by_filename which is defined under the song class
  def import
    files.each { |file|  Song.new_by_filename(file)}
  end
end


#     ruby lib/mp3_importer.rb
