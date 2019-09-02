class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(@path).delete_if{|m| m == "." || m ==".."}
  end


  def import
    self.files.each do |filename|
      song = Song.new_by_filename(filename)
    end
  end


end
