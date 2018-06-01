class MP3Importer
attr_accessor :path

  def initialize(path)
    @path = path
    @mp3s = []
  end

  def files
    @mp3s_without_path = []
    @mp3s = Dir["./spec/fixtures/mp3s/*.mp3"].each {|file| @mp3s << file}
    @mp3s.each do |mp3|
      @mp3s_without_path << mp3.split("mp3s/")[1]
    end
    @mp3s_without_path
  end

  def import
    Song.new_by_filename(@mp3s_without_path)
  end
end
