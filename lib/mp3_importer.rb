class MP3Importer

  attr_accessor :path

  def initialize(filename)
    @path = filename
  end

  def files
    @files = Dir.entries(@path)
    @files.delete_if {|item| item == "." || item == ".."}
  end

  def import
    self.files.each do |file|
    # parse using Song.new_by_filename(filename)
      
      song = Song.new_by_filename(file)
      Artist.all << song.artist unless Artist.all.include?(song.artist)
      # binding.pry
    # add to @@all with Artist.save
      # Artist.all << artist
    end
  end

end