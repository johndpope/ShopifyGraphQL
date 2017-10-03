// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class DeletedBookmarkQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = DeletedBookmark

		@discardableResult
		open func mediaId(aliasSuffix: String? = nil) -> DeletedBookmarkQuery {
			addField(field: "mediaId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func userId(aliasSuffix: String? = nil) -> DeletedBookmarkQuery {
			addField(field: "userId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func lastWatched(aliasSuffix: String? = nil) -> DeletedBookmarkQuery {
			addField(field: "lastWatched", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func secondsWatched(aliasSuffix: String? = nil) -> DeletedBookmarkQuery {
			addField(field: "secondsWatched", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class DeletedBookmark: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = DeletedBookmarkQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "mediaId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: DeletedBookmark.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "userId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: DeletedBookmark.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "lastWatched":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: DeletedBookmark.self, field: fieldName, value: fieldValue)
				}
				return value

				case "secondsWatched":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: DeletedBookmark.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				default:
				throw SchemaViolationError(type: DeletedBookmark.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "DeletedBookmark" }

		open var mediaId: GraphQL.ID? {
			return internalGetMediaId()
		}

		func internalGetMediaId(aliasSuffix: String? = nil) -> GraphQL.ID? {
			return field(field: "mediaId", aliasSuffix: aliasSuffix) as! GraphQL.ID?
		}

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

		open var secondsWatched: Int32? {
			return internalGetSecondsWatched()
		}

		func internalGetSecondsWatched(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "secondsWatched", aliasSuffix: aliasSuffix) as! Int32?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "mediaId":

				return .scalar

				case "userId":

				return .scalar

				case "lastWatched":

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
