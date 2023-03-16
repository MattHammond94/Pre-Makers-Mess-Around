#!/usr/bin/env ruby


class Calculator 
  ADD = :+
  SUBTRACT = :-
  MULTIPLY = :*
  DIVIDE = :/

  def self.add(*args)
    puts args.inject(ADD)
  end

  def self.subtract(*args)
    puts args.inject(SUBTRACT)
  end

  def self.multiply(*args)
    puts args.inject(MULTIPLY)
  end

  def self.divide(*args)
    puts args.map(&:to_f).inject(DIVIDE)
  end
end

Calculator.add(10, 2, 2)
Calculator.subtract(3, 3, 3)
Calculator.divide(10, 2, 2)
Calculator.add(2.6, 2.7, 2.9)
Calculator.multiply(4, 7, 1, 7, 8)
Calculator.multiply(2.8, 2.9, 2.3)
Calculator.divide(-4, -4, -4)