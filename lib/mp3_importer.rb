class MP3Importer

	attr_accessor :path

  def initialize(path)
    @path = path
    @filenames = []
  end

  def files
  	Dir.entries(path).select do |filename|
    files= filename.split("- ")[1]
	end
  end

  def import
  	self.files.each {|song|Song.new_by_filename(song)}
  end

end
