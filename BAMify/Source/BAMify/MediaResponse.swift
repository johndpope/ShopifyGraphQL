// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class MediaResponseQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = MediaResponse

		@discardableResult
		open func hits(aliasSuffix: String? = nil, _ subfields: (MediaHitQuery) -> Void) -> MediaResponseQuery {
			let subquery = MediaHitQuery()
			subfields(subquery)

			addField(field: "hits", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func meta(aliasSuffix: String? = nil, _ subfields: (SearchResponseMetaQuery) -> Void) -> MediaResponseQuery {
			let subquery = SearchResponseMetaQuery()
			subfields(subquery)

			addField(field: "meta", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func user(aliasSuffix: String? = nil, _ subfields: (UserQuery) -> Void) -> MediaResponseQuery {
			let subquery = UserQuery()
			subfields(subquery)

			addField(field: "user", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class MediaResponse: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = MediaResponseQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "hits":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: MediaResponse.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: MediaResponse.self, field: fieldName, value: fieldValue)
				}
				return try MediaHit(fields: value) } as [Any?]

				case "meta":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: MediaResponse.self, field: fieldName, value: fieldValue)
				}
				return try SearchResponseMeta(fields: value)

				case "user":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: MediaResponse.self, field: fieldName, value: fieldValue)
				}
				return try User(fields: value)

				default:
				throw SchemaViolationError(type: MediaResponse.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "MediaResponse" }

		open var hits: [BAMify.MediaHit?]? {
			return internalGetHits()
		}

		func internalGetHits(aliasSuffix: String? = nil) -> [BAMify.MediaHit?]? {
			return field(field: "hits", aliasSuffix: aliasSuffix) as! [BAMify.MediaHit?]?
		}

		open var meta: BAMify.SearchResponseMeta? {
			return internalGetMeta()
		}

		func internalGetMeta(aliasSuffix: String? = nil) -> BAMify.SearchResponseMeta? {
			return field(field: "meta", aliasSuffix: aliasSuffix) as! BAMify.SearchResponseMeta?
		}

		open var user: BAMify.User? {
			return internalGetUser()
		}

		func internalGetUser(aliasSuffix: String? = nil) -> BAMify.User? {
			return field(field: "user", aliasSuffix: aliasSuffix) as! BAMify.User?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "hits":

				return .objectList

				case "meta":

				return .object

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
				case "hits":
				return internalGetHits()  as? [GraphQL.AbstractResponse]  ?? []

				default:
				return []
			}
		}

		open func childResponseObjectMap() -> [GraphQL.AbstractResponse]  {
			var response: [GraphQL.AbstractResponse] = []
			objectMap.keys.forEach({
				key in
				switch(key) {
					case "hits":
					if let value = internalGetHits() {
						value.forEach {
							if let value = $0 {
								response.append(value)
								response.append(contentsOf: value.childResponseObjectMap())
							}
						}
					}

					case "meta":
					if let value = internalGetMeta() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
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
