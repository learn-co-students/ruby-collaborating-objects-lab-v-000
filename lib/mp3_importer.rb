require 'pry'



class MP3Importer

  attr_accessor :filename
  #initializes the class with the new filename it's importing
  def initialize(filename)
    @filename = filename
  end

  def path
    #returns the filename showing its path
    @filename
  end

  def files
    #loads all the mp3 files in the path directory
    #we want to return an array
    #The method creates an array to return.
    #It iterates through the mp3 paths (self.filename) given to us to create the object
    #and pushes them into the array it created (path_directory).
    #And returns the array path_directory.
    path_directory = []
    Dir.foreach(self.filename) do |path|
      next if path == '.' or path == '..'
      # do work on real items
      path_directory << path
    end
    path_directory
  end

  def import
    #imports the files into the library by create songs from a filename
    #artist all needs to return an array
    #then we get the size of that array and need it to equal 3
    #Iterate through and and push/link the song files into the Arist all array
    #This method iterates through the directory of songs given and creates new songs with the new_by_filename method
    #from the song class.
    self.files.each do |song|
      Song.new_by_filename(song)
    end



  end

end
