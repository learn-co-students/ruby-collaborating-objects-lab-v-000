class MP3Importer
  #solves uninitalize constant MP3Importer error
  def path=(path)#setter method
    @path = path
  end
  def path#getter method
    @path
  end
  def initialize(path)
    @path = path
  end
  def files
    Dir.glob("./spec/fixtures/mp3s/*.mp3").collect do |file|
      file.gsub("./spec/fixtures/mp3s/","")
    end
    #Dir.glob returns an array, changed filename extensions
    #to match filenames in tree structure
    #use Collect instead of Each to return a new collections
    #while iterating
  end
end
