class MP3Importer


  attr_accessor :path

  def initialize(path)
    @path = "./spec/fixtures/mp3s"

  end

  def files
    #loads all the mp3 files in the path directory
    Dir.glob("./spec/fixtures/mp3s/*.mp3")

    #normalizes the filename to just the mp3 filename with no path
    Dir.entries("./spec/fixtures/mp3s").select {|f| !File.directory? f}
  end

  def import
    list_of_filenames = self.files

    list_of_filenames.each { |filename| Song.new_by_filename(filename) }
  end
end
