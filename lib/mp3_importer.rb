class MP3Importer
  attr_accessor :path

  def initialize(path)
    #accepts a file path to parse mp3 files from
    @path = path
    files
  end

  def files #loads all the mp3 files in the path directory
    file_array = []
    Dir.entries(@path).each do |entry|
      if entry.include?("mp3")
        file_array << entry
      end
    end
    file_array
  end

  def import #imports the files into the library by creating songs from a filename 
    files.each do |filename|
      Song.new_by_filename(filename)
    end
  end

end

#def files
#  #loads all the mp3 files in the path directory
#  #normalizes the filename to just the mp3 filename with no path
#  @parsed = @path.split("-")
#end
#
#  #imports the files into the library by creating songs from a filename 
#def import(list_of_filenames)
#  list_of_filenames.each{|file_name| songs << Song.new_by_filename(file_name)}
#end