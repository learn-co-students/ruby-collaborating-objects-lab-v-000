require 'pry'
#learn spec/mp3_importer_spec.rb

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(path).select do |filename|
    files= filename.split("- ")[1]
    end
  end

  def import
    # binding.pry
    files.each {|song|Song.new_by_filename(song)}
  end

end
