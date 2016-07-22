class MP3Importer

  attr_accessor :path, :files
  @@all = []
  

  def initialize(filepath)
    @path = filepath
    @files = Dir.entries(filepath).reject{ |e| File.directory? e }
  end


#The filepath contains two files with the same artist, therefore my code creates two instances of that artist and I'm not sure how to work around that issue 
def import
  @files.each do |x|
    split_array = x.split(/\.mp3| - /)
    newartist = Artist.new(split_array[0])
    newartist.save unless Artist.all.include?(newartist.name)
    newsong = Song.new(split_array[1])
    newartist.add_song(newsong)
  end
end

end