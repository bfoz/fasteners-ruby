require 'units'

module Fasteners
    module Metric
	# http://en.wikipedia.org/wiki/Nut_(hardware)
	class Nut < Fasteners::Nut
	    THICKNESS = {
		2   => 1.6,
		2.5 => 2,
		3   => 2.4,
		4   => 3.2,
		5   => 4,
		6   => 5,
		7   => 5.5,
		8   => 6.5,
		10  => 8,
		12  => 10,
		14  => 11,
		16  => 13,
		18  => 15,
		20  => 16,
		24  => 19,
		30  => 24,
		36  => 29,
	    }

	    THIN_THICKNESS = {
		2   => 1.2,
		2.5 => 1.6,
		3   => 1.8,
		4   => 2.2,
		5   => 2.7,
		6   => 3.2,
		7   => 3.5,
		8   => 4,
		10  => 5,
		12  => 6,
		14  => 7,
		16  => 8,
		18  => 9,
		20  => 10,
	    }

	    WIDTH = {
		1   => 2.5,
		1.6 => 3.2,
		2   => 4,
		2.5 => 5,
		3   => 5.5,
		3.5 => 6,
		4   => 7,
		5   => 8,
		6   => 10,
		7   => 11,
		8   => 13,
		10  => 16,
		12  => 18,
		14  => 21,
		16  => 24,
		18  => 27,
		20  => 30,
		22  => 32,
		24  => 36,
		27  => 41,
		30  => 46,
		36  => 55,
	    }

	    # @param diameter	[Number]    the nominal diameter of the hole
	    # @param type	[Symbol]    the type of the {Nut}
	    # @return [Number]	the thickness of the {Nut} corresponding to the given diameter
	    def self.thickness(diameter, type)
		# Remove any units that diameter might have (the Hash doesn't like them)
		diameter = diameter.value if diameter.respond_to?(:value)

		case type
		    when :thin then THIN_THICKNESS[diameter] || raise(ArgumentError, "There is no thin version of an M#{diameter} nut")
		    else
			THICKNESS[diameter] || raise(ArgumentError, "There is no standard thickness for an M#{diameter} nut")
		end
	    end

	    # @param diameter	[Number]    the nominal diameter of the hole
	    # @return [Number]	the width of the {Nut} between the flats
	    def self.width(diameter)
		# Remove any units that diameter might have (the Hash doesn't like them)
		diameter = diameter.value if diameter.respond_to?(:value)

		WIDTH[diameter] || raise(ArgumentError, "There is no standard width for an M#{diameter} nut")
	    end

	    def initialize(**options)
		super **options

		@height = self.class.thickness(hole_diameter, type).mm
		@width = self.class.width(hole_diameter).mm
	    end
	end
    end
end