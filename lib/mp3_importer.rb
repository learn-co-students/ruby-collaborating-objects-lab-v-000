class MP3Importer
  attr_accessor :path

    def initialize(path)
      @path = path
    end

    def files
      d = Dir.new(@path)
      result = []
      d.each do |name|
        if name.end_with?(".mp3")
          result << name
        end
      end
      result
    end

    def import
      self.files.each do |filename|
        Song.new_by_filename(filename)
      end
    end
end # => End mp3Importer Class
