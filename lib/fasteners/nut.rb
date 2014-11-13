module Fasteners
    # A generic Nut
    # http://en.wikipedia.org/wiki/Nut_(hardware)
    class Nut
	# @!attribute height
	#   @return [Number]  the height of the {Nut}
	attr_reader :height
	alias :thickness :height

	# @!attribute hole_diameter
	#   @return [Number]  the nominal diameter of the screw that the {Nut} fits
	attr_reader :hole_diameter
	alias :diameter :hole_diameter

	# @!attribute width
	#   @return [Number]  the width of the {Nut} between the flats (also the wrench size)
	attr_reader :width
	alias :indiameter :width

	# @!attribute type
	#   @return [Symbol]  :hex, :thin, :jam, :nylon (defaults to :hex)
	attr_reader :type

	def initialize(**options)
	    options.each {|k,v| respond_to?(k) && instance_variable_set("@#{k}", v) }
	end
    end
end
