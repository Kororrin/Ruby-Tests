class Lidlights
    attr :started
    
    def initialize 
        @started = false 
    end

    def started?
        puts("lidlights.starting")
        @started
    end

    def start 
        # @started = true
    end

end 