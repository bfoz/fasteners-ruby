module Fasteners
    # A generic Bolt
    class Bolt
	# @!attribute clearance_diameter
	#   @return [Number]  the diameter of the clearance hole that fits the bolt
	attr_reader :clearance_diameter

	# @!attribute diameter
	#   @return [Number]  the diameter of the bolt shaft
	attr_reader :diameter

	# @!attribute head_diameter
	#   @return [Number]  the diameter of the bolt head
	attr_reader :head_diameter

	# @!attribute head_length
	#   @return [Number]  the length of the bolt head
	attr_reader :head_length

	# @!attribute length
	#   @return [Number]  the length of the bolt shaft
	attr_reader :length

	def initialize(**options)
	    options.each {|k,v| respond_to?(k) && instance_variable_set("@#{k}", v) }
	end
    end
end
