
class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end

  def import
    files.each{|f| Song.new_by_filename(f)}
  end
end

=begin
require 'pry'

class MP3Importer

  attr_accessor :files_loaded, :path

  def initialize(path)
    @path = path
    @files_loaded = 0
  end

  def files
    import
    @files_loaded.map! do |t|
      array = t.split("/")
      t = array.last
    end

    return @files_loaded
    #binding.pry
  end

  def import
    #binding.pry
    @files_loaded = Dir.glob("#{path}/*.mp3")
    @files_loaded.each {|f|Song.new_by_filename(f)}
  end

end
=end 
