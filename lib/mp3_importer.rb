require "pry"

class MP3Importer

  attr_accessor :path, :file_ary

  @@file_ary = []

  def initialize(path)
    @path = path
  end

  def files
    @@file_ary = Dir.entries(path).select{|f| f =~ /[a-z]/}
    #binding.pry #@@file_ary works
  end

  def import
    puts @@file_ary
    @@file_ary.each do |filename|
      song = Song.new_by_filename(filename)
      # binding.pry
    end
  end
end
