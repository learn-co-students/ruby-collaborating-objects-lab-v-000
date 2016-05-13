require 'pry'

class MP3Importer

@norm = []

  attr_accessor :path, :songs

  def initialize(path)
    @path = path
  end

  def files
    @path=Dir["./spec/fixtures/mp3s/*mp3"]
    @norm = @path.collect{|x| x.split(/\s-\s|\.|\//)} 
    @norm.collect do |file_array|
      file_array[5]<<" - "<<file_array[6]<<" - "<<file_array[7]<<"."<<file_array[8]
    end
  end

  def import
  files
    @norm.each do |filename|
      Song.all << Song.new_by_filename(filename)
    end
  end

end


#/Users/jasonkwong/developer/ruby-collaborating-objects-lab-v-000/spec/fixtures/mp3s/