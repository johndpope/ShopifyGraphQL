// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class Coordinate {
		open var lat: Double

		open var lon: Double

		public init(
			lat: Double,

			lon: Double
		) {
			self.lat = lat

			self.lon = lon
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("lat:\(lat)")

			fields.append("lon:\(lon)")

			return "{\(fields.joined(separator: ","))}"
		}
	}
}
