// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class TopFoundHitsResponseQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = TopFoundHitsResponse

		@discardableResult
		open func meta(aliasSuffix: String? = nil, _ subfields: (SearchResponseMetaQuery) -> Void) -> TopFoundHitsResponseQuery {
			let subquery = SearchResponseMetaQuery()
			subfields(subquery)

			addField(field: "meta", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func query(aliasSuffix: String? = nil) -> TopFoundHitsResponseQuery {
			addField(field: "query", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func aggs(aliasSuffix: String? = nil, _ subfields: (TopFoundHitsAggQuery) -> Void) -> TopFoundHitsResponseQuery {
			let subquery = TopFoundHitsAggQuery()
			subfields(subquery)

			addField(field: "aggs", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func entities(aliasSuffix: String? = nil) -> TopFoundHitsResponseQuery {
			addField(field: "entities", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class TopFoundHitsResponse: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = TopFoundHitsResponseQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "meta":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: TopFoundHitsResponse.self, field: fieldName, value: fieldValue)
				}
				return try SearchResponseMeta(fields: value)

				case "query":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: TopFoundHitsResponse.self, field: fieldName, value: fieldValue)
				}
				return value

				case "aggs":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: TopFoundHitsResponse.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: TopFoundHitsResponse.self, field: fieldName, value: fieldValue)
				}
				return try TopFoundHitsAgg(fields: value) } as [Any?]

				case "entities":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: TopFoundHitsResponse.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: TopFoundHitsResponse.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "TopFoundHitsResponse" }

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

		open var aggs: [BAMify.TopFoundHitsAgg?]? {
			return internalGetAggs()
		}

		func internalGetAggs(aliasSuffix: String? = nil) -> [BAMify.TopFoundHitsAgg?]? {
			return field(field: "aggs", aliasSuffix: aliasSuffix) as! [BAMify.TopFoundHitsAgg?]?
		}

		open var entities: String? {
			return internalGetEntities()
		}

		func internalGetEntities(aliasSuffix: String? = nil) -> String? {
			return field(field: "entities", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "meta":

				return .object

				case "query":

				return .scalar

				case "aggs":

				return .objectList

				case "entities":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "meta":
				return internalGetMeta()

				default:
				break
			}
			return nil
		}

		override open func fetchChildObjectList(key: String) -> [GraphQL.AbstractResponse] {
			switch(key) {
				case "aggs":
				return internalGetAggs() as? [GraphQL.AbstractResponse] ?? []

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

					case "aggs":
					if let value = internalGetAggs() {
						value.forEach {
							if let value = $0 {
								response.append(value)
								response.append(contentsOf: value.childResponseObjectMap())
							}
						}
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
