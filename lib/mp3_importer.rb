class MP3Importer

attr_accessor :path

  def initialize(test_music_path)
    @path = test_music_path
  end

  def files
    temp = []
    collection = []
    temp = Dir.glob("#{path}/*.mp3")
    temp.each do |file|
      collection << file.split("mp3s/")[1]
    end
    collection
  end

  def import
    files.each do |filename|
      Song.new_by_filename(filename)
    end
  end

end
