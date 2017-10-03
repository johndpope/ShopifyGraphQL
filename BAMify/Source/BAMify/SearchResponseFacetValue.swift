// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class SearchResponseFacetValueQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = SearchResponseFacetValue

		@discardableResult
		open func count(aliasSuffix: String? = nil) -> SearchResponseFacetValueQuery {
			addField(field: "count", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func value(aliasSuffix: String? = nil) -> SearchResponseFacetValueQuery {
			addField(field: "value", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class SearchResponseFacetValue: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = SearchResponseFacetValueQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "count":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: SearchResponseFacetValue.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "value":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: SearchResponseFacetValue.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: SearchResponseFacetValue.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "SearchResponseFacetValue" }

		open var count: Int32? {
			return internalGetCount()
		}

		func internalGetCount(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "count", aliasSuffix: aliasSuffix) as! Int32?
		}

		open var value: String? {
			return internalGetValue()
		}

		func internalGetValue(aliasSuffix: String? = nil) -> String? {
			return field(field: "value", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "count":

				return .scalar

				case "value":

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
