require 'pry'
class MP3Importer
  def initialize(file)
    @path = file
  end

  attr_accessor :path

  def files
    Dir.entries(@path).select {|f| !File.directory? f}
  end

  def import
    list = self.files
    #binding.pry
    list.each do |l|
      Song.new_by_filename(l)
    end
  end
end
