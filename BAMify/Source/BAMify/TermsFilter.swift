// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class TermsFilter {
		open var attributeName: String

		open var values: [String]

		public init(
			attributeName: String,

			values: [String]
		) {
			self.attributeName = attributeName

			self.values = values
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("attributeName:\(GraphQL.quoteString(input: attributeName))")

			fields.append("values:[\(values.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")

			return "{\(fields.joined(separator: ","))}"
		}
	}
}
