// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class BoolDirectiveTermsFilter {
		open var attributeName: Input<String>

		open var values: Input<[String]>

		public init(
			attributeName: Input<String> = .undefined,

			values: Input<[String]> = .undefined
		) {
			self.attributeName = attributeName

			self.values = values
		}

		func serialize() -> String {
			var fields: [String] = []

			switch attributeName {
				case .value(let attributeName):
				if let attributeName = attributeName {
					fields.append("attributeName:\(GraphQL.quoteString(input: attributeName))")
				} else {
					fields.append("attributeName:null")
				}
				case .undefined: break
			}

			switch values {
				case .value(let values):
				if let values = values {
					fields.append("values:[\(values.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")
				} else {
					fields.append("values:null")
				}
				case .undefined: break
			}

			return "{\(fields.joined(separator: ","))}"
		}
	}
}
