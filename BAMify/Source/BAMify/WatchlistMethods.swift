// Generated from graphql_swift_gen gem
import Foundation

public protocol WatchlistMethods {
	var typeName: String { get }

	var onWatchlist: Bool? { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension BAMify {
	open class WatchlistMethodsQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = WatchlistMethods

		@discardableResult
		open func onWatchlist(aliasSuffix: String? = nil) -> WatchlistMethodsQuery {
			addField(field: "onWatchlist", aliasSuffix: aliasSuffix)
			return self
		}

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onWatchlistBookmarksUser(subfields: (WatchlistBookmarksUserQuery) -> Void) -> WatchlistMethodsQuery {
			let subquery = WatchlistBookmarksUserQuery()
			subfields(subquery)
			addInlineFragment(on: "WatchlistBookmarksUser", subfields: subquery)
			return self
		}

		@discardableResult
		open func onWatchlistUser(subfields: (WatchlistUserQuery) -> Void) -> WatchlistMethodsQuery {
			let subquery = WatchlistUserQuery()
			subfields(subquery)
			addInlineFragment(on: "WatchlistUser", subfields: subquery)
			return self
		}
	}

	open class UnknownWatchlistMethods: GraphQL.AbstractResponse, GraphQLObject, WatchlistMethods {
		public typealias Query = WatchlistMethodsQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "onWatchlist":
				if value is NSNull { return nil }
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: UnknownWatchlistMethods.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: UnknownWatchlistMethods.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> WatchlistMethods {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownWatchlistMethods.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "WatchlistBookmarksUser":
				return try WatchlistBookmarksUser.init(fields: fields)

				case "WatchlistUser":
				return try WatchlistUser.init(fields: fields)

				default:
				return try UnknownWatchlistMethods.init(fields: fields)
			}
		}

		open var onWatchlist: Bool? {
			return internalGetOnWatchlist()
		}

		func internalGetOnWatchlist(aliasSuffix: String? = nil) -> Bool? {
			return field(field: "onWatchlist", aliasSuffix: aliasSuffix) as! Bool?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "onWatchlist":

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
