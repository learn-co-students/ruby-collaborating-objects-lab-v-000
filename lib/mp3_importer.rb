require 'pry'

class MP3Importer
  attr_accessor :name, :path, :files
  @@files = []

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("#{path}/"+"*.mp3") do |x| 
      x.sub!("#{path}/","")
      x.sub!(/[.mp3]{4}\z/,"")
      @@files << x
    end 
  end

  def import
    i = 0
    while i < @@files.length do
      @@files[i] = Song.new_by_filename(@@files[i])
      i = i + 1
    end
  end  
end