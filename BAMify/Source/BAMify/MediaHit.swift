// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class MediaHitQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = MediaHit

		@discardableResult
		open func hit(aliasSuffix: String? = nil, _ subfields: (WatchableQuery) -> Void) -> MediaHitQuery {
			let subquery = WatchableQuery()
			subfields(subquery)

			addField(field: "hit", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func user(aliasSuffix: String? = nil, _ subfields: (MediaUserQuery) -> Void) -> MediaHitQuery {
			let subquery = MediaUserQuery()
			subfields(subquery)

			addField(field: "user", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func meta(aliasSuffix: String? = nil, _ subfields: (SearchHitMetaQuery) -> Void) -> MediaHitQuery {
			let subquery = SearchHitMetaQuery()
			subfields(subquery)

			addField(field: "meta", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class MediaHit: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = MediaHitQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "hit":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: MediaHit.self, field: fieldName, value: fieldValue)
				}
				return try UnknownWatchable.create(fields: value)

				case "user":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: MediaHit.self, field: fieldName, value: fieldValue)
				}
				return try MediaUser(fields: value)

				case "meta":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: MediaHit.self, field: fieldName, value: fieldValue)
				}
				return try SearchHitMeta(fields: value)

				default:
				throw SchemaViolationError(type: MediaHit.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "MediaHit" }

		open var hit: Watchable? {
			return internalGetHit()
		}

		func internalGetHit(aliasSuffix: String? = nil) -> Watchable? {
			return field(field: "hit", aliasSuffix: aliasSuffix) as! Watchable?
		}

		open var user: BAMify.MediaUser? {
			return internalGetUser()
		}

		func internalGetUser(aliasSuffix: String? = nil) -> BAMify.MediaUser? {
			return field(field: "user", aliasSuffix: aliasSuffix) as! BAMify.MediaUser?
		}

		open var meta: BAMify.SearchHitMeta? {
			return internalGetMeta()
		}

		func internalGetMeta(aliasSuffix: String? = nil) -> BAMify.SearchHitMeta? {
			return field(field: "meta", aliasSuffix: aliasSuffix) as! BAMify.SearchHitMeta?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "hit":

				return .scalar

				case "user":

				return .object

				case "meta":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "user":
				return internalGetUser()

				case "meta":
				return internalGetMeta()

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
			var response: [GraphQL.AbstractResponse] = []
			objectMap.keys.forEach({
				key in
				switch(key) {
					case "hit":
					if let value = internalGetHit() {
						response.append(value as! GraphQL.AbstractResponse)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "user":
					if let value = internalGetUser() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "meta":
					if let value = internalGetMeta() {
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
