require'pry'

class MP3Importer
	
	attr_accessor :path
	
	def initialize(path)
		@path = path
	end
	
	def import
		self.files.each do |filename|
			Song.new_by_filename(filename)
		end
	end
	
	def files
		Dir.entries(@path).select {|f| !File.directory? f}
	end
		
	
end