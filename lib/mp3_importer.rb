require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
        #Dir.chdir(@path) do | path |
        #Dir.glob("*.mp3")
  end

  def import
    files.each{|file| Song.new_by_filename(file)}
    #binding.pry
    end

end
