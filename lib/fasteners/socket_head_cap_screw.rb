require_relative 'bolt'

module Fasteners
    # Your standard metric socket head cap screw
    # http://en.wikipedia.org/wiki/ISO_metric_screw_thread
    class SocketHeadCapScrew < Bolt
	# @!attribute socket_diameter
	#   @return [Number]  the diameter of the socket (the indiameter for hexagonal sockets)
	attr_reader :socket_diameter

	# @param diameter   [Number]	The nominal diameter of the screw
	def initialize(diameter, **options)
	    options[:diameter] = diameter
	    options[:head_diameter] = 2 * diameter
	    options[:head_length] = diameter

	    @socket_depth = 0.75 * diameter
	    @socket_diameter = 0.8 * diameter

	    super **options
	end
    end
end
