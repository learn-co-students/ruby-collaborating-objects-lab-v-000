class MP3Importer
  attr_reader :path
  def initialize(test_music_path)
    @path = test_music_path
    @files_arr=[]
  end

  def files
    @files_arr = Dir["#{@path}/*.mp3"].collect{|unabridge| unabridge.split(@path+ "/").join}
  end

  def import
    files.each{|x| Song.new_by_filename(x)}
  end
end
