class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = []
    Dir.glob("#{path}/*.mp3").map do |file|
        files << file.gsub("#{path}/", "")
      end
        files
    end

    def import
       files.each{|f| Song.new_by_filename(f)}
    end
end
