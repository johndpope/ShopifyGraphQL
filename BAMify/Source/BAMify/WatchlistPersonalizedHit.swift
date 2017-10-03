// Generated from graphql_swift_gen gem
import Foundation

public protocol WatchlistPersonalizedHit {
	var typeName: String { get }

	var user: BAMify.WatchlistUser? { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension BAMify {
	open class WatchlistPersonalizedHitQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = WatchlistPersonalizedHit

		@discardableResult
		open func user(aliasSuffix: String? = nil, _ subfields: (WatchlistUserQuery) -> Void) -> WatchlistPersonalizedHitQuery {
			let subquery = WatchlistUserQuery()
			subfields(subquery)

			addField(field: "user", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onCollection(subfields: (CollectionQuery) -> Void) -> WatchlistPersonalizedHitQuery {
			let subquery = CollectionQuery()
			subfields(subquery)
			addInlineFragment(on: "Collection", subfields: subquery)
			return self
		}

		@discardableResult
		open func onSeries(subfields: (SeriesQuery) -> Void) -> WatchlistPersonalizedHitQuery {
			let subquery = SeriesQuery()
			subfields(subquery)
			addInlineFragment(on: "Series", subfields: subquery)
			return self
		}
	}

	open class UnknownWatchlistPersonalizedHit: GraphQL.AbstractResponse, GraphQLObject, WatchlistPersonalizedHit {
		public typealias Query = WatchlistPersonalizedHitQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "user":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnknownWatchlistPersonalizedHit.self, field: fieldName, value: fieldValue)
				}
				return try WatchlistUser(fields: value)

				default:
				throw SchemaViolationError(type: UnknownWatchlistPersonalizedHit.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> WatchlistPersonalizedHit {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownWatchlistPersonalizedHit.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "Collection":
				return try Collection.init(fields: fields)

				case "Series":
				return try Series.init(fields: fields)

				default:
				return try UnknownWatchlistPersonalizedHit.init(fields: fields)
			}
		}

		open var user: BAMify.WatchlistUser? {
			return internalGetUser()
		}

		func internalGetUser(aliasSuffix: String? = nil) -> BAMify.WatchlistUser? {
			return field(field: "user", aliasSuffix: aliasSuffix) as! BAMify.WatchlistUser?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "user":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "user":
				return internalGetUser()

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
