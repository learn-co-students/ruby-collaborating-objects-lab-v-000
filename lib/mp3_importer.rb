require "pry"

class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(path).select{|f| f.include?(".mp3")}
    # binding.pry
  end

  def import
    # binding.pry
    # puts files

    if files != nil
      files.each{ |filename| if filename != nil then Song.new_by_filename(filename) end}
    end
  end
end
