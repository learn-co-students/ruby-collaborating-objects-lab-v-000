class MP3Importer
  attr_accessor :path

  @@directory = []

  def initialize(path)
    @path = path

  end

  def files
    Dir.entries(@path).delete_if { |n|
      !n.include?("mp3")
    }
  end
   def import
    self.files.each { |n|
    Song.new_by_filename(n)
    }
  end


end
