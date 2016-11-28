require 'pry'

class MP3Importer

 attr_accessor :path, :import

  def initialize(path)
    @path = path
  end

  def files
   @x = Dir.entries(@path).reject {|i| i == ".." }
   .collect.reject { |a| a == "." }
  end

  def import
  files.each { |f| Song.new_by_filename(f) }

  end


end
