require 'pry'

class MP3Importer

  attr_accessor = :path, :file_names

  def initialize(file_path)
    @path = file_path
  end

  def path
    @path
  end

  def files
    @file_names = Dir["#{@path}/*"]
    @file_names.collect do |element|
      element.slice!("#{@path}/")
    end
    @file_names
  end

  def import
    files.each {|f| Song.new_by_filename(f)}
  end

end

  #Dir["db/mp3s/*"]
