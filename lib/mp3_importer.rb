class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

    #files gets called by #import and returns an array
    #files turns the files paths into a string
    #then removes the directory part of the string
  def files
    @files ||= Dir.entries(@path).select {|song| !File.directory?(song) && song.end_with?(".mp3")  }
  end

  #import takes each normalized filename and sends it to the Song class #new_by_filename
   #which creates a new song instance for each of the filenames
   #import calls #files
   #so it is calling the method on the MP3Importer instance
   #import is collaborating with Song instances by calling a Song method (new_by_filename)
  #  which creates a new song for every item in the array
  def import
    self.files.each {|file| Song.new_by_filename(file)}
  end

end
