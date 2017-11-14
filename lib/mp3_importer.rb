require 'pry'

class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  #def files
  # library = []
  # Dir.glob("#{path}/*.mp3").each do |filename|
  #   #https://richonrails.com/articles/basic-file-and-directory-operations-in-ruby
  #   #https://code.tutsplus.com/tutorials/ruby-for-newbies-working-with-directories-and-files--net-18810
  #   library << filename
  # end
  # library.collect do |f|
  #   File.basename(f)
  # end
  #end
  #all can be condensed into below.

  def files
    Dir.glob("#{path}/*.mp3").collect{|f| File.basename(f)}
  end

  def import
    files.each {|f| Song.new_by_filename(f)}
  end
end
