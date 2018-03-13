class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    filenames = Dir[@path + "/*.mp3"].select {|e| File.file? (e)}
    split_files = filenames.collect {|name| name.split("/").last}
    split_files
  end

  def import
    self.files.each do |song|
    Song.new_by_filename(song)
  end
  end


end
