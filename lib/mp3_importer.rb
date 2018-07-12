class MP3Importer

  attr_accessor :path

  def initialize(file)
    @path = file
  end

  def files
    Dir.entries(path).reject{|file| file == "." || file == ".."}
  end

  def import
    files.each {|filename| Song.new_by_filename(filename)}
   end
end
