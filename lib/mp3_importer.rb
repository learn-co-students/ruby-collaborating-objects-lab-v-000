require "pry"
class MP3Importer
  attr_accessor :path, :mp3s


  def initialize(pth)
    @path = pth
    @mp3s = []
    self.files
  end
  def files()
    mp3_files = []
    Dir.foreach(@path) do |filename|
      if filename.end_with?("mp3")
        mp3_files << filename
      end
    end
    @mp3s = mp3_files
  end
  def import()
# binding.pry
    @mp3s.each do |filename|
      Song.new_by_filename(filename)
    end
  end
end
