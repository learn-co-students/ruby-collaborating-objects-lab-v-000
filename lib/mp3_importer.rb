require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path) #path enters, assign it to instance variable
    @path = path
  end

  def files # ||= will assign value if variable holds nothing
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end

  def import #uses instance variable @files
    files.each{|f| Song.new_by_filename(f)}
  end

end

#code from before improvements made
=begin
  def files
    #loads all the mp3 files in the path directory
    #normalizes the filename to just the mp3 filename with no path
    
    #files_here = Dir.entries(@path)
    files_here = Dir.entries(@path).collect {|file| file if (file.length > 3)}
    files_here = files_here.reject {|file| file.to_s.empty?}
    #binding.pry
  end

=begin
  def import
    self.files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
=end
=begin  
  def import
    #imports the files into the library by creating songs from a filename
    self.files.each do |song|
      Song.new_by_filename(song)
    end
  end
=end

