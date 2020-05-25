#require '..db/mp3s'

class MP3Importer

  attr_accessor :path, :files
  
  def initialize(path) #class method
   self.path = path
 end

  def files #class method
    #self.files = Dir["#{self.path}/*mp3"].collect{|x| x[0] = x.sub("#{self.path}/", "")}
    self.files = Dir.entries(path).find_all{|files| files =~ /mp3$/}
  end
 
  def import #class method
    self.files.each do |x| 
      Song.new_by_filename(x)
    end
  end

end