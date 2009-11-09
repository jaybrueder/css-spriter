module PNG
  class Sprite
    def self.[]( dir )
    end
    
    attr_reader :images
    def initialize
      @images = []
      @locations = {}
    end
    
    def merge_right( image )
      @images << image
    end
    
    def merge_left( image )
      @images.unshift( image )
    end
    
    def locations
      @images.reverse.inject(0) do |x, image|  
        x = image.width + x
        @locations[image.name.to_sym] = { :x => -(x), :width => image.width }
        x
      end
      @locations
    end

    def write( output_filename )
      # head is the last image, then we merge left
      head, *tail = @images.reverse
      
      result = tail.inject( head ){ |head, image| head.merge_left( image ) }
      
      result.write( output_filename )
    end
  end
end
