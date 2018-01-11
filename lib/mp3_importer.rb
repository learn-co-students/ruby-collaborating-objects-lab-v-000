class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.glob("#{self.path}/*.mp3")
    @files = @files.map {|f| f.split("").slice(21, f.length).join("")}
  end

  def import
    self.files.each do |file|
      Song.new_by_filename(file)
    end
  end

end
