class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir["#{@path}/*.mp3"].collect do |x|
      x.slice!(21, 100)
    end
  end

  def import
    self.files.each{|x| Song.new_by_filename(x)}
  end

end
