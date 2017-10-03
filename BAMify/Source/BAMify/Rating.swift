// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class RatingQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Rating

		@discardableResult
		open func value(aliasSuffix: String? = nil) -> RatingQuery {
			addField(field: "value", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func system(aliasSuffix: String? = nil) -> RatingQuery {
			addField(field: "system", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func advisories(aliasSuffix: String? = nil) -> RatingQuery {
			addField(field: "advisories", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class Rating: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = RatingQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "value":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Rating.self, field: fieldName, value: fieldValue)
				}
				return value

				case "system":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Rating.self, field: fieldName, value: fieldValue)
				}
				return value

				case "advisories":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: Rating.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? String else {
					throw SchemaViolationError(type: Rating.self, field: fieldName, value: fieldValue)
				}
				return value } as [Any?]

				default:
				throw SchemaViolationError(type: Rating.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "Rating" }

		open var value: String? {
			return internalGetValue()
		}

		func internalGetValue(aliasSuffix: String? = nil) -> String? {
			return field(field: "value", aliasSuffix: aliasSuffix) as! String?
		}

		open var system: String? {
			return internalGetSystem()
		}

		func internalGetSystem(aliasSuffix: String? = nil) -> String? {
			return field(field: "system", aliasSuffix: aliasSuffix) as! String?
		}

		open var advisories: [String?]? {
			return internalGetAdvisories()
		}

		func internalGetAdvisories(aliasSuffix: String? = nil) -> [String?]? {
			return field(field: "advisories", aliasSuffix: aliasSuffix) as! [String?]?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "value":

				return .scalar

				case "system":

				return .scalar

				case "advisories":

				return .scalarList

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
