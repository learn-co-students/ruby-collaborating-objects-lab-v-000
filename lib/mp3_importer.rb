class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = Dir.glob(@path + "/" + "*.mp3")
      files.map do |x|
        x.split("/mp3s/")[1]
      end
    end

  def import
    filenames = self.files
    filenames.each do |x|
      Song.new_by_filename(x)
    end
  end
end
