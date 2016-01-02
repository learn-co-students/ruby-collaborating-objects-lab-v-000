class Song
	
	attr_accessor :name, :artist
	def initialize(name)
		@name = name
	end
	
	def self.new_by_filename(file_name)
		new_name = file_name.scan(/(?>-)[\w\s]*(?=-)/).strip
		new_artist = file_name.scan(/^[\w\s]*(?=-)/).strip
		name = self.new(new_name)
		self.artist=Artist.new(new_artist)
	end
	
end