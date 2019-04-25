class MP3Importer
  attr_accessor :path, :file_name

  def initialize(path)
    @path = path
    @file_name = file_name
  end

  def files
    # file = File.basename(".mp3")
    file = File.basename(".mp3")
    file

    # Dir["/path/*.mp3"].each {|file| require file }
  end

end
