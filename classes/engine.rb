class Engine
    attr :started 

    def initialize
        @started = false
    end

    def started?
        puts("engine.starting")
        @started
        # self.started
    end
        
    def start
        @started = true
    end
end