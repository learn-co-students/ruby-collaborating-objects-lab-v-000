require 'pry'

class MP3Importer
  attr_accessor :path
  @@all = []

  def initialize(file)
    @path = file
    files
  end

  def files




    #@path = @path + "/*.mp3"
    #@@all = Dir.glob(@path)
    #@@all = Dir.glob("#{@path}/**/*.mp3")
    ##@@all.map{|file| File.basename(file)}
    ##@@all = Dir[@path].select { |e| e.split(/[\/]/).last }
    #@@all = Dir[@path]
    #@path = @path.each{|file| file.split("/")}
    #@@all.map{|file| File.basename(file)}
    #@path = @path.each{ |file| "hello"}
    #/[\/]/.match(file)
    @@all = Dir.entries(@path).select { |file| file =~ /.+\.mp3\Z/ }
    #Dir.entries(path).select { |file| file.end_with?(".mp3") }


    #@@all_files.map { |file_path| File.basename(file_path) }

  end

  def import

    @@all.each{ |file| Song.new_by_filename(file)}
  end

end
