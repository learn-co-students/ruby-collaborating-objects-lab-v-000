class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files #"./spec/fixtures/mp3s"
    #loads all the files in the path directory into an array if they are mp3s
    #normalizes filename to the filename with no path
    #run by spec as a instance with a file path as the input
    @files = []
    Dir.glob("#{path}/*.mp3").each do |file|
      @files << file[21..-1] #alternately: file.gsub("#{path}/", "")
    end
    @files
  end

  def import
    ##files will handle taking in the file path and putting all the filenames into an array
    #Song.new_by_filename will handle separating the artist from the song name
    #all import has to do is iterate over the files array and create new songs
    files.each {|file| Song.new_by_filename(file)}
  end

end
