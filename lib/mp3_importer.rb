require 'pry'
class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    @path = path
    #@file =
    self.files
  end

  def files
    @file = []
    list_of_file = Dir.new(self.path)
    list_of_file.each do |file_name|
      @file << file_name if file_name.include? '.mp3'
      #binding.pry
    end
    @file
  end

  def import
    list_of_file = Dir.new(self.path)
    list_of_file.each do |file_name|
      if file_name.include? '.mp3'
        new_a = file_name.split(/\s\-\s/)
        Artist.all << new_a[0] unless Artist.all.include? new_a[0]
      #binding.pry
      end
    end
  end
end