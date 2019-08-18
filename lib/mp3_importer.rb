class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
  	@path = path
  end

  def files
  	@files = []
  	new_files = Dir.glob(@path+"/*.mp3")
  	new_files.each do |file|
  		@files << file.split(@path+"/")[1]
  	end
  	@files
  end

  def import
  	files
  	@files.map do |file|
  	  Song.new_by_filename(file)
  	end
  end
end