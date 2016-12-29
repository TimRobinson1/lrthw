# Same file as ex1.rb, but with filled-in comments.

## Animal is-a object
class Animal
end

## Dog is-a class of Animal
class Dog < Animal

  def initialize(name)
    ## has-a
    @name = name
  end
end

## Cat is-a class of Animal
class Cat < Animal

  def initialize(name)
    ## Cat has-a name of name
    @name = name
  end
end

## Person is-a
class Person

  def initialize(name)
    ## Person has-a name of name.
    @name = name

    ## Person has-a pet of some kind
    @pet = nil
  end

  attr_accessor :pet
end

## Employee is-a class of person
class Employee < Person

  def initialize(name, salary)
    ## With this you can run the initialize of the parent class Person before you do what you need inside Employee
    super(name)
    ## Person has-a pet of some kind
    @salary = salary
  end

end

## Fish is-a object
class Fish
end

## Salmon is-a class of Fish
class Salmon < Fish
end

## Halibut is-a class of Fish
class Halibut < Fish
end


## Rover is-a Dog
rover = Dog.new("Rover")

## Satan is-a Cat
satan = Cat.new("Satan")

## Mary is-a Person
mary = Person.new("Mary")

## Mary has-a pet Satan
mary.pet = satan

## Frank is-a employee with a salary of 120000
frank = Employee.new("Frank", 120000)

## Frank has-a pet Rover
frank.pet = rover

## Flipper is-a Fish
flipper = Fish.new()

## Crouse is-a Salmon
crouse = Salmon.new()

## Harry is-a Halibut
harry = Halibut.new()
