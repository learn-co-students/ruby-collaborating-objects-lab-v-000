class MP3Importer
    
    attr_accessor :path, :files
    
    def initialize(file_path)
        @path = file_path
    end
    
    def files
        f = Pathname.new(@path).children #returns children in dir as an array
        ## @files = <Pathname:./spec/fixtures/mp3s/Action Bronson - Larry Csonka - indie.mp3>
        f = f.map{|x| x.split}  #splits directory and basename (children)
        ## f = #<Pathname:./spec/fixtures/mp3s>, #<Pathname:Action Bronson - Larry Csonka - indie.mp3>
        @files = f.map {|x, y| y.to_s} #returns an array of the children as string
        ## @files = "Action Bronson - Larry Csonka - indie.mp3"
        
    end
    
    def import
        self.files.each {|filename| Song.new_by_filename(filename)}
    end
    
end

#/oo-ruby/labs-end/ruby-collaborating-objects-lab-v-000/db/mp3s/Action%20Bronson%20-%20Larry%20Csonka%20-%20indie.mp3