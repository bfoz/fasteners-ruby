module Fasteners
    # A generic Washer
    # http://en.wikipedia.org/wiki/Washer_(hardware)
    class Washer
	# @!attribute thickness
	#   @return [Number]  the thickness of the {Washer}
	attr_reader :thickness

	# @!attribute inner_diameter
	#   @return [Number]  the diameter of the hole
	attr_reader :inner_diameter
	alias :hole_diameter :inner_diameter

	# @!attribute outer_diameter
	#   @return [Number]  the outer diameter  of the {Washer}
	attr_reader :outer_diameter
	alias :diameter :outer_diameter

	def initialize(**options)
	    options.each {|k,v| respond_to?(k) && instance_variable_set("@#{k}", v) }
	end
    end
end
