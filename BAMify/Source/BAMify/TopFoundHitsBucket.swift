// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class TopFoundHitsBucketQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = TopFoundHitsBucket

		@discardableResult
		open func value(aliasSuffix: String? = nil) -> TopFoundHitsBucketQuery {
			addField(field: "value", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func count(aliasSuffix: String? = nil) -> TopFoundHitsBucketQuery {
			addField(field: "count", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func hits(aliasSuffix: String? = nil, _ subfields: (SearchHitQuery) -> Void) -> TopFoundHitsBucketQuery {
			let subquery = SearchHitQuery()
			subfields(subquery)

			addField(field: "hits", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class TopFoundHitsBucket: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = TopFoundHitsBucketQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "value":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: TopFoundHitsBucket.self, field: fieldName, value: fieldValue)
				}
				return value

				case "count":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: TopFoundHitsBucket.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "hits":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: TopFoundHitsBucket.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: TopFoundHitsBucket.self, field: fieldName, value: fieldValue)
				}
				return try SearchHit(fields: value) } as [Any?]

				default:
				throw SchemaViolationError(type: TopFoundHitsBucket.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "TopFoundHitsBucket" }

		open var value: String? {
			return internalGetValue()
		}

		func internalGetValue(aliasSuffix: String? = nil) -> String? {
			return field(field: "value", aliasSuffix: aliasSuffix) as! String?
		}

		open var count: Int32? {
			return internalGetCount()
		}

		func internalGetCount(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "count", aliasSuffix: aliasSuffix) as! Int32?
		}

		open var hits: [BAMify.SearchHit?]? {
			return internalGetHits()
		}

		func internalGetHits(aliasSuffix: String? = nil) -> [BAMify.SearchHit?]? {
			return field(field: "hits", aliasSuffix: aliasSuffix) as! [BAMify.SearchHit?]?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "value":

				return .scalar

				case "count":

				return .scalar

				case "hits":

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
				case "hits":
				return internalGetHits() ?? []

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
