require 'pry'
class MP3Importer
  # @@all = []
  attr_accessor :path
  def initialize(path)
    @path = path 
  end 
  
  def files 
    file_entries = Dir.entries(@path)
    @final_entries = file_entries.delete_if {|file| file.length < 3}
  end 
  
  def split_entries
    @file_name = []
    # binding.pry 
    files.each do |file|
      @file_name << file.split(" - ")[1]
    end 
    @file_name
  end 
  
  def self.all 
    # binding.pry 
    self 
    @@all 
  end 
  
  def import 
    # binding.pry 
    files.each do |file|
      Song.new_by_filename(file)
    end 
  end 
  
  # def self.all 
  #   binding.pry 
  #   self 
  #   @@all 
  # end 
  
end 