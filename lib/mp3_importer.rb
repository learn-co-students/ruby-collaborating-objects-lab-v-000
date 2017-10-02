require 'pry'

class MP3Importer

  attr_accessor :path, :file

  def initialize(path)
    @path = path

  end

  def files
    Dir.entries(self.path).reject{|entry| entry == "." || entry == ".."}
  end

  def import

    self.files.each do |f|
      Song.new_by_filename(f)
    end


  end


end
