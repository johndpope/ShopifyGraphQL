// Generated from graphql_swift_gen gem
import Foundation

public protocol SearchResponse {
	var typeName: String { get }

	var meta: BAMify.SearchResponseMeta? { get }

	var query: String? { get }

	var entities: String? { get }

	var facets: [BAMify.SearchResponseFacet?]? { get }

	var hits: [BAMify.SearchHit?]? { get }

	var user: BAMify.User? { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension BAMify {
	open class SearchResponseQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = SearchResponse

		@discardableResult
		open func meta(aliasSuffix: String? = nil, _ subfields: (SearchResponseMetaQuery) -> Void) -> SearchResponseQuery {
			let subquery = SearchResponseMetaQuery()
			subfields(subquery)

			addField(field: "meta", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func query(aliasSuffix: String? = nil) -> SearchResponseQuery {
			addField(field: "query", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func entities(aliasSuffix: String? = nil) -> SearchResponseQuery {
			addField(field: "entities", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func facets(aliasSuffix: String? = nil, _ subfields: (SearchResponseFacetQuery) -> Void) -> SearchResponseQuery {
			let subquery = SearchResponseFacetQuery()
			subfields(subquery)

			addField(field: "facets", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func hits(aliasSuffix: String? = nil, _ subfields: (SearchHitQuery) -> Void) -> SearchResponseQuery {
			let subquery = SearchHitQuery()
			subfields(subquery)

			addField(field: "hits", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func user(aliasSuffix: String? = nil, _ subfields: (UserQuery) -> Void) -> SearchResponseQuery {
			let subquery = UserQuery()
			subfields(subquery)

			addField(field: "user", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onPrefixResponse(subfields: (PrefixResponseQuery) -> Void) -> SearchResponseQuery {
			let subquery = PrefixResponseQuery()
			subfields(subquery)
			addInlineFragment(on: "PrefixResponse", subfields: subquery)
			return self
		}

		@discardableResult
		open func onQueryResponse(subfields: (QueryResponseQuery) -> Void) -> SearchResponseQuery {
			let subquery = QueryResponseQuery()
			subfields(subquery)
			addInlineFragment(on: "QueryResponse", subfields: subquery)
			return self
		}

		@discardableResult
		open func onSitesearchResponse(subfields: (SitesearchResponseQuery) -> Void) -> SearchResponseQuery {
			let subquery = SitesearchResponseQuery()
			subfields(subquery)
			addInlineFragment(on: "SitesearchResponse", subfields: subquery)
			return self
		}
	}

	open class UnknownSearchResponse: GraphQL.AbstractResponse, GraphQLObject, SearchResponse {
		public typealias Query = SearchResponseQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "meta":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnknownSearchResponse.self, field: fieldName, value: fieldValue)
				}
				return try SearchResponseMeta(fields: value)

				case "query":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownSearchResponse.self, field: fieldName, value: fieldValue)
				}
				return value

				case "entities":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownSearchResponse.self, field: fieldName, value: fieldValue)
				}
				return value

				case "facets":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: UnknownSearchResponse.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: UnknownSearchResponse.self, field: fieldName, value: fieldValue)
				}
				return try SearchResponseFacet(fields: value) } as [Any?]

				case "hits":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: UnknownSearchResponse.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: UnknownSearchResponse.self, field: fieldName, value: fieldValue)
				}
				return try SearchHit(fields: value) } as [Any?]

				case "user":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnknownSearchResponse.self, field: fieldName, value: fieldValue)
				}
				return try User(fields: value)

				default:
				throw SchemaViolationError(type: UnknownSearchResponse.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> SearchResponse {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownSearchResponse.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "PrefixResponse":
				return try PrefixResponse.init(fields: fields)

				case "QueryResponse":
				return try QueryResponse.init(fields: fields)

				case "SitesearchResponse":
				return try SitesearchResponse.init(fields: fields)

				default:
				return try UnknownSearchResponse.init(fields: fields)
			}
		}

		open var meta: BAMify.SearchResponseMeta? {
			return internalGetMeta()
		}

		func internalGetMeta(aliasSuffix: String? = nil) -> BAMify.SearchResponseMeta? {
			return field(field: "meta", aliasSuffix: aliasSuffix) as! BAMify.SearchResponseMeta?
		}

		open var query: String? {
			return internalGetQuery()
		}

		func internalGetQuery(aliasSuffix: String? = nil) -> String? {
			return field(field: "query", aliasSuffix: aliasSuffix) as! String?
		}

		open var entities: String? {
			return internalGetEntities()
		}

		func internalGetEntities(aliasSuffix: String? = nil) -> String? {
			return field(field: "entities", aliasSuffix: aliasSuffix) as! String?
		}

		open var facets: [BAMify.SearchResponseFacet?]? {
			return internalGetFacets()
		}

		func internalGetFacets(aliasSuffix: String? = nil) -> [BAMify.SearchResponseFacet?]? {
			return field(field: "facets", aliasSuffix: aliasSuffix) as! [BAMify.SearchResponseFacet?]?
		}

		open var hits: [BAMify.SearchHit?]? {
			return internalGetHits()
		}

		func internalGetHits(aliasSuffix: String? = nil) -> [BAMify.SearchHit?]? {
			return field(field: "hits", aliasSuffix: aliasSuffix) as! [BAMify.SearchHit?]?
		}

		open var user: BAMify.User? {
			return internalGetUser()
		}

		func internalGetUser(aliasSuffix: String? = nil) -> BAMify.User? {
			return field(field: "user", aliasSuffix: aliasSuffix) as! BAMify.User?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "meta":

				return .object

				case "query":

				return .scalar

				case "entities":

				return .scalar

				case "facets":

				return .objectList

				case "hits":

				return .objectList

				case "user":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "meta":
				return internalGetMeta()

				case "user":
				return internalGetUser()

				default:
				break
			}
			return nil
		}

		override open func fetchChildObjectList(key: String) -> [GraphQL.AbstractResponse] {
			switch(key) {
				case "facets":
				return internalGetFacets() ?? []

				case "hits":
				return internalGetHits() ?? []

				default:
				return []
			}
		}

		open func childResponseObjectMap() -> [GraphQL.AbstractResponse]  {
			var response: [GraphQL.AbstractResponse] = []
			objectMap.keys.forEach({
				key in
				switch(key) {
					case "meta":
					if let value = internalGetMeta() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "facets":
					if let value = internalGetFacets() {
						value.forEach {
							if let value = $0 {
								response.append(value)
								response.append(contentsOf: value.childResponseObjectMap())
							}
						}
					}

					case "hits":
					if let value = internalGetHits() {
						value.forEach {
							if let value = $0 {
								response.append(value)
								response.append(contentsOf: value.childResponseObjectMap())
							}
						}
					}

					case "user":
					if let value = internalGetUser() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					default:
					break
				}
			})
			return response
		}

		open func responseObject() -> GraphQL.AbstractResponse {
			return self as GraphQL.AbstractResponse
		}
	}
}
