// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class BoundingBox {
		open var topLeft: Coordinate

		open var bottomRight: Coordinate

		public init(
			topLeft: Coordinate,

			bottomRight: Coordinate
		) {
			self.topLeft = topLeft

			self.bottomRight = bottomRight
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("top_left:\(topLeft.serialize())")

			fields.append("bottom_right:\(bottomRight.serialize())")

			return "{\(fields.joined(separator: ","))}"
		}
	}
}
