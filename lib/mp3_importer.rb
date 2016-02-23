require 'pry'

class MP3Importer
  attr_accessor :name, :path, :files
  
  def initialize(path)
    @path = path
    @files = []
  end

  def files
    Dir.glob("#{path}/"+"*.mp3") do |x| 
      x.sub!("#{path}/","")
      x.sub!(/[.mp3]{4}\z/,"")
      @files << x
    end
  end
  
  def import
    @files.each do |item|
    Song.new_by_filename(item)
    end
  end   
end