class MP3Importer
  attr_accessor :path, :song, :name

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(@path).keep_if {|x| x.include? ".mp3"}
  end

  def import
    self.files.each do |i|
      Song.new_by_filename("#{i}")
    end
  end

end
