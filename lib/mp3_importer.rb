
  class MP3Importer

    def initialize(file_path)
      @file_path = file_path
    end

    def path
      @file_path
    end

    def files
    Dir.entries(@file_path).delete_if{|obj|obj=="."||obj==".."}
    end

    def import
      files.collect{|obj|Song.new_by_filename(obj) }
    end
  end
