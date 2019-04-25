class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    file = File.basename(".mp3")
    file

    # Dir["/path/*.mp3"].each {|file| require file }
  end

end
