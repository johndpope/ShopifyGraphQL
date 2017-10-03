// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class SearchResponseFacetQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = SearchResponseFacet

		@discardableResult
		open func field(aliasSuffix: String? = nil) -> SearchResponseFacetQuery {
			addField(field: "field", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func values(aliasSuffix: String? = nil, _ subfields: (SearchResponseFacetValueQuery) -> Void) -> SearchResponseFacetQuery {
			let subquery = SearchResponseFacetValueQuery()
			subfields(subquery)

			addField(field: "values", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class SearchResponseFacet: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = SearchResponseFacetQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "field":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: SearchResponseFacet.self, field: fieldName, value: fieldValue)
				}
				return value

				case "values":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: SearchResponseFacet.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: SearchResponseFacet.self, field: fieldName, value: fieldValue)
				}
				return try SearchResponseFacetValue(fields: value) } as [Any?]

				default:
				throw SchemaViolationError(type: SearchResponseFacet.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "SearchResponseFacet" }

		open var field: String? {
			return internalGetField()
		}

		func internalGetField(aliasSuffix: String? = nil) -> String? {
			return field(field: "field", aliasSuffix: aliasSuffix) as! String?
		}

		open var values: [BAMify.SearchResponseFacetValue?]? {
			return internalGetValues()
		}

		func internalGetValues(aliasSuffix: String? = nil) -> [BAMify.SearchResponseFacetValue?]? {
			return field(field: "values", aliasSuffix: aliasSuffix) as! [BAMify.SearchResponseFacetValue?]?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "field":

				return .scalar

				case "values":

				return .objectList

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
				case "values":
				return internalGetValues() ?? []

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
