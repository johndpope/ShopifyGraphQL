// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class Radius {
		open var loc: Coordinate

		open var distance: String

		public init(
			loc: Coordinate,

			distance: String
		) {
			self.loc = loc

			self.distance = distance
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("loc:\(loc.serialize())")

			fields.append("distance:\(GraphQL.quoteString(input: distance))")

			return "{\(fields.joined(separator: ","))}"
		}
	}
}
