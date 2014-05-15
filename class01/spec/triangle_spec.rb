require 'spec_helper'

class TriangleError < RuntimeError
end

=begin
- equilateral
- isosceles
- scalene
=end

class Triangle

	attr_reader :a, :b, :c
  
	def initialize(a,b,c)
		@sidea=a
		@sideb=b
		@sidec=c
	end

	def kind
	end

	private

	def sides
	end

	def equilateral?
		true if (@sidea == @sideb == @sidec )
	
	end

	def isosceles?
		true if ( ( @sidea == @sideb and @sidea != @sidec ) or ( @sideb == @sidec and @sideb != @sidec ) or (@sidea == @sidec and @sidea != @sideb)  )
  
	end
	
	def scalene?
		true if ( @sidea != @sideb != @sidec)
	end

	def illegal?
	
	end

	def violates_inequality?
	end

	def impossible_length_side?
	end

end

	describe Triangle do
		describe "#kind" do
			context "with valid sides" do
			it 'should return equilateral if both sides are equal '
				Triangle.new(1,1,1)
			it 'should return isosceles if two sides are equal'
				Triangle.new(2,1,1)
			it 'should return scalene if no sides are equal'
				Triangle.new(1,2,3)
			it 'should return illegal if any two sides is greater than the other side'
				Triangle.new(1,-1,0)
			end 
		end
	end

