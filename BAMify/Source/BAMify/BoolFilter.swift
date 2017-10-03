// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class BoolFilter {
		open var termsFilters: Input<[TermsFilter]>

		public init(
			termsFilters: Input<[TermsFilter]> = .undefined
		) {
			self.termsFilters = termsFilters
		}

		func serialize() -> String {
			var fields: [String] = []

			switch termsFilters {
				case .value(let termsFilters):
				if let termsFilters = termsFilters {
					fields.append("termsFilters:[\(termsFilters.map{ "\($0.serialize())" }.joined(separator: ","))]")
				} else {
					fields.append("termsFilters:null")
				}
				case .undefined: break
			}

			return "{\(fields.joined(separator: ","))}"
		}
	}
}
