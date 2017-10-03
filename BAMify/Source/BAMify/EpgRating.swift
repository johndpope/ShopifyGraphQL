// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class EpgRatingQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = EpgRating

		@discardableResult
		open func code(aliasSuffix: String? = nil) -> EpgRatingQuery {
			addField(field: "code", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func system(aliasSuffix: String? = nil) -> EpgRatingQuery {
			addField(field: "system", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class EpgRating: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = EpgRatingQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "code":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: EpgRating.self, field: fieldName, value: fieldValue)
				}
				return value

				case "system":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: EpgRating.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: EpgRating.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "EpgRating" }

		open var code: String? {
			return internalGetCode()
		}

		func internalGetCode(aliasSuffix: String? = nil) -> String? {
			return field(field: "code", aliasSuffix: aliasSuffix) as! String?
		}

		open var system: String? {
			return internalGetSystem()
		}

		func internalGetSystem(aliasSuffix: String? = nil) -> String? {
			return field(field: "system", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "code":

				return .scalar

				case "system":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				default:
				break
			}
			return nil
		}

		override open func fetchChildObjectList(key: String) -> [GraphQL.AbstractResponse] {
			switch(key) {
				default:
				return []
			}
		}

		open func childResponseObjectMap() -> [GraphQL.AbstractResponse]  {
			return []
		}

		open func responseObject() -> GraphQL.AbstractResponse {
			return self as GraphQL.AbstractResponse
		}
	}
}
