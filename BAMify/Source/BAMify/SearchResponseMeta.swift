// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class SearchResponseMetaQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = SearchResponseMeta

		@discardableResult
		open func hits(aliasSuffix: String? = nil) -> SearchResponseMetaQuery {
			addField(field: "hits", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func time(aliasSuffix: String? = nil) -> SearchResponseMetaQuery {
			addField(field: "time", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func pageSize(aliasSuffix: String? = nil) -> SearchResponseMetaQuery {
			addField(field: "page_size", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func offset(aliasSuffix: String? = nil) -> SearchResponseMetaQuery {
			addField(field: "offset", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func errors(aliasSuffix: String? = nil) -> SearchResponseMetaQuery {
			addField(field: "errors", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class SearchResponseMeta: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = SearchResponseMetaQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "hits":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: SearchResponseMeta.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "time":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: SearchResponseMeta.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "page_size":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: SearchResponseMeta.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "offset":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: SearchResponseMeta.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "errors":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: SearchResponseMeta.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? String else {
					throw SchemaViolationError(type: SearchResponseMeta.self, field: fieldName, value: fieldValue)
				}
				return value } as [Any?]

				default:
				throw SchemaViolationError(type: SearchResponseMeta.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "SearchResponseMeta" }

		open var hits: Int32? {
			return internalGetHits()
		}

		func internalGetHits(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "hits", aliasSuffix: aliasSuffix) as! Int32?
		}

		open var time: Int32? {
			return internalGetTime()
		}

		func internalGetTime(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "time", aliasSuffix: aliasSuffix) as! Int32?
		}

		open var pageSize: Int32? {
			return internalGetPageSize()
		}

		func internalGetPageSize(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "page_size", aliasSuffix: aliasSuffix) as! Int32?
		}

		open var offset: Int32? {
			return internalGetOffset()
		}

		func internalGetOffset(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "offset", aliasSuffix: aliasSuffix) as! Int32?
		}

		open var errors: [String?]? {
			return internalGetErrors()
		}

		func internalGetErrors(aliasSuffix: String? = nil) -> [String?]? {
			return field(field: "errors", aliasSuffix: aliasSuffix) as! [String?]?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "hits":

				return .scalar

				case "time":

				return .scalar

				case "page_size":

				return .scalar

				case "offset":

				return .scalar

				case "errors":

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
