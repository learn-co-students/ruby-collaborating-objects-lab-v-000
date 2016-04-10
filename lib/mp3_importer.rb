require 'pry'
class MP3Importer

  attr_accessor :filepath

  def initialize(filepath)
    @filepath = filepath
  end

  def path
    @filepath
  end

  def files
    Dir.entries(@filepath).reject {|f| File.directory? f}
  end

  def import
    files.each do |array|
      song = Song.new_by_filename(array)
    end
  end


end
