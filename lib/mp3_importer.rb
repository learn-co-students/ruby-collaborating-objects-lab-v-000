require 'pry'
class MP3Importer

	attr_accessor :path

	def initialize(path)
		@path = path
        @seperated_files = []
	end

	def files
	  Dir["#{self.path}/*.mp3"].collect do |file|
         file.gsub("./spec/fixtures/mp3s/", "")
      end 
	end
    
	def import		
       self.files.each do |strin_of_info|
       	  Song.new_by_filename(strin_of_info)
       end
	end

end


