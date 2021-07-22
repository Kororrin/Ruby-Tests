require_relative 'classes/car'

car = Car.new()
car.start()


if car.self_check
    puts("Self check passed")
else
    puts("errors detected")
    # TODO: Koro; show the errors
    car_errors = car.errors
    car_errors.each do |error|

    end
    

    # ....make loop and print each error

end


# TODO: Koro Make the car accelerate
# car.speed = 4
# puts(car.speed())

# TODO: Koro Make the car stop

# TODO: Koro Shtudown car
