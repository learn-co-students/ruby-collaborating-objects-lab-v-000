require 'pry'
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(path).delete_if {|f| f == '.' || f == '..' }
  end

  def import
    self.files.each do |file|
      song = Song.new_by_filename(file)
    end
  end

end
