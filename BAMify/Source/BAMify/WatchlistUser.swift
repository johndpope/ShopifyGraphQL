// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class WatchlistUserQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = WatchlistUser

		@discardableResult
		open func onWatchlist(aliasSuffix: String? = nil) -> WatchlistUserQuery {
			addField(field: "onWatchlist", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class WatchlistUser: GraphQL.AbstractResponse, GraphQLObject, WatchlistMethods {
		public typealias Query = WatchlistUserQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "onWatchlist":
				if value is NSNull { return nil }
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: WatchlistUser.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: WatchlistUser.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "WatchlistUser" }

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
