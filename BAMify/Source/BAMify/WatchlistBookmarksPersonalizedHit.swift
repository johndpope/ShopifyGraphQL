// Generated from graphql_swift_gen gem
import Foundation

public protocol WatchlistBookmarksPersonalizedHit {
	var typeName: String { get }

	var user: BAMify.WatchlistBookmarksUser? { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension BAMify {
	open class WatchlistBookmarksPersonalizedHitQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = WatchlistBookmarksPersonalizedHit

		@discardableResult
		open func user(aliasSuffix: String? = nil, _ subfields: (WatchlistBookmarksUserQuery) -> Void) -> WatchlistBookmarksPersonalizedHitQuery {
			let subquery = WatchlistBookmarksUserQuery()
			subfields(subquery)

			addField(field: "user", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onAiring(subfields: (AiringQuery) -> Void) -> WatchlistBookmarksPersonalizedHitQuery {
			let subquery = AiringQuery()
			subfields(subquery)
			addInlineFragment(on: "Airing", subfields: subquery)
			return self
		}

		@discardableResult
		open func onVideo(subfields: (VideoQuery) -> Void) -> WatchlistBookmarksPersonalizedHitQuery {
			let subquery = VideoQuery()
			subfields(subquery)
			addInlineFragment(on: "Video", subfields: subquery)
			return self
		}
	}

	open class UnknownWatchlistBookmarksPersonalizedHit: GraphQL.AbstractResponse, GraphQLObject, WatchlistBookmarksPersonalizedHit {
		public typealias Query = WatchlistBookmarksPersonalizedHitQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "user":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnknownWatchlistBookmarksPersonalizedHit.self, field: fieldName, value: fieldValue)
				}
				return try WatchlistBookmarksUser(fields: value)

				default:
				throw SchemaViolationError(type: UnknownWatchlistBookmarksPersonalizedHit.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> WatchlistBookmarksPersonalizedHit {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownWatchlistBookmarksPersonalizedHit.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "Airing":
				return try Airing.init(fields: fields)

				case "Video":
				return try Video.init(fields: fields)

				default:
				return try UnknownWatchlistBookmarksPersonalizedHit.init(fields: fields)
			}
		}

		open var user: BAMify.WatchlistBookmarksUser? {
			return internalGetUser()
		}

		func internalGetUser(aliasSuffix: String? = nil) -> BAMify.WatchlistBookmarksUser? {
			return field(field: "user", aliasSuffix: aliasSuffix) as! BAMify.WatchlistBookmarksUser?
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
