require_relative 'engine'
require_relative 'lidlights'

class Car 
    attr :speed, true
    attr :errors 

    # def speed
    #     @speed
    # end

    # def speed= speed_value
    #     @speed = speed_value
    # end

    def initialize
        @engine = Engine.new()
        @lidlights = Lidlights.new()
        @errors = []

        @speed = 0
        @car_started = false

        puts("we have initialized a new car object with engine #{@engine.started?}")
    end

    def start
        puts("car.starting")
        @engine.start()
        puts("...now engine is running #{@engine.started?}")

        @lidlights.start()
        puts("...now lights are on #{@lidlights.started?}")
        @car_started = true
    end

    def self_check
        # puts("#{@car_started} && #{! @engine.started?} = #{@car_started && ! @engine.started?}")
        
        if @car_started && ! @engine.started?
            @errors << "Car started but engine is down"
            # puts("Error detected in engine")
        end

        # TODO: Koro - make check that the bulbs are lit
        if @car_started && ! @lidlights.started?
            @errors << "Car started but lid lights are down"
            # puts("Error detected in lid lights")
        end 
        
        @errors.empty?
    end


end
