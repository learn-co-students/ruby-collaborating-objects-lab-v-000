require "pry"


class MP3Importer
attr_accessor :path, :file


  def initialize(file)
    @file = file


  end

  def path
    @file
  end


  def import
   self.files.each do |x|
    Song.new_by_filename(x)
    end
  end

  def files
   Dir.entries(@file).select {|f| !File.directory? f}
  end


end
