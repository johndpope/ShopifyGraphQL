// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class MediaUserQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = MediaUser

		@discardableResult
		open func userId(aliasSuffix: String? = nil) -> MediaUserQuery {
			addField(field: "userId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func lastWatched(aliasSuffix: String? = nil) -> MediaUserQuery {
			addField(field: "lastWatched", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func percentCompleted(aliasSuffix: String? = nil) -> MediaUserQuery {
			addField(field: "percentCompleted", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func onWatchlist(aliasSuffix: String? = nil) -> MediaUserQuery {
			addField(field: "onWatchlist", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func secondsWatched(aliasSuffix: String? = nil) -> MediaUserQuery {
			addField(field: "secondsWatched", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class MediaUser: GraphQL.AbstractResponse, GraphQLObject, MetaUser {
		public typealias Query = MediaUserQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "userId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: MediaUser.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "lastWatched":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: MediaUser.self, field: fieldName, value: fieldValue)
				}
				return value

				case "percentCompleted":
				if value is NSNull { return nil }
				guard let value = value as? Double else {
					throw SchemaViolationError(type: MediaUser.self, field: fieldName, value: fieldValue)
				}
				return value

				case "onWatchlist":
				if value is NSNull { return nil }
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: MediaUser.self, field: fieldName, value: fieldValue)
				}
				return value

				case "secondsWatched":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: MediaUser.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				default:
				throw SchemaViolationError(type: MediaUser.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "MediaUser" }

		open var userId: GraphQL.ID? {
			return internalGetUserId()
		}

		func internalGetUserId(aliasSuffix: String? = nil) -> GraphQL.ID? {
			return field(field: "userId", aliasSuffix: aliasSuffix) as! GraphQL.ID?
		}

		open var lastWatched: String? {
			return internalGetLastWatched()
		}

		func internalGetLastWatched(aliasSuffix: String? = nil) -> String? {
			return field(field: "lastWatched", aliasSuffix: aliasSuffix) as! String?
		}

		open var percentCompleted: Double? {
			return internalGetPercentCompleted()
		}

		func internalGetPercentCompleted(aliasSuffix: String? = nil) -> Double? {
			return field(field: "percentCompleted", aliasSuffix: aliasSuffix) as! Double?
		}

		open var onWatchlist: Bool? {
			return internalGetOnWatchlist()
		}

		func internalGetOnWatchlist(aliasSuffix: String? = nil) -> Bool? {
			return field(field: "onWatchlist", aliasSuffix: aliasSuffix) as! Bool?
		}

		open var secondsWatched: Int32? {
			return internalGetSecondsWatched()
		}

		func internalGetSecondsWatched(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "secondsWatched", aliasSuffix: aliasSuffix) as! Int32?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "userId":

				return .scalar

				case "lastWatched":

				return .scalar

				case "percentCompleted":

				return .scalar

				case "onWatchlist":

				return .scalar

				case "secondsWatched":

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
