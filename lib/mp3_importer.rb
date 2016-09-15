require 'pry'
class MP3Importer

	attr_accessor :path, :files

	def initialize(path)
		@path = path
        @files = []
	end

	def files
		Dir.foreach(self.path) do |item|
			next if item == '.' or item == '..' 
            @files << item
		end
		@files 
	end

	def import
       @files.each do |strin_of_info|
       	  Song.new_by_filename(strin_of_info)
       end
	end

end

binding.pry