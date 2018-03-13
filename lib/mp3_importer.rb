class MP3Importer

    attr_accessor :path

    @array = []

    def initialize(path)
      @path = path
    end

    def files
      @array = Dir.entries(@path)
      @array.delete(".")
      @array.delete("..")
      @array
    end

    def import
      self.files.each do |x|
        Song.new_by_filename(x)
      end
    end

end
