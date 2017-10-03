// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class DeleteAllBookmarksQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = DeleteAllBookmarks

		@discardableResult
		open func bookmarks(aliasSuffix: String? = nil, _ subfields: (DeletedBookmarkQuery) -> Void) -> DeleteAllBookmarksQuery {
			let subquery = DeletedBookmarkQuery()
			subfields(subquery)

			addField(field: "bookmarks", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func meta(aliasSuffix: String? = nil, _ subfields: (MetaDeletionQuery) -> Void) -> DeleteAllBookmarksQuery {
			let subquery = MetaDeletionQuery()
			subfields(subquery)

			addField(field: "meta", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class DeleteAllBookmarks: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = DeleteAllBookmarksQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "bookmarks":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: DeleteAllBookmarks.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: DeleteAllBookmarks.self, field: fieldName, value: fieldValue)
				}
				return try DeletedBookmark(fields: value) } as [Any?]

				case "meta":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: DeleteAllBookmarks.self, field: fieldName, value: fieldValue)
				}
				return try MetaDeletion(fields: value)

				default:
				throw SchemaViolationError(type: DeleteAllBookmarks.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "DeleteAllBookmarks" }

		open var bookmarks: [BAMify.DeletedBookmark?]? {
			return internalGetBookmarks()
		}

		func internalGetBookmarks(aliasSuffix: String? = nil) -> [BAMify.DeletedBookmark?]? {
			return field(field: "bookmarks", aliasSuffix: aliasSuffix) as! [BAMify.DeletedBookmark?]?
		}

		open var meta: BAMify.MetaDeletion? {
			return internalGetMeta()
		}

		func internalGetMeta(aliasSuffix: String? = nil) -> BAMify.MetaDeletion? {
			return field(field: "meta", aliasSuffix: aliasSuffix) as! BAMify.MetaDeletion?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "bookmarks":

				return .objectList

				case "meta":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "meta":
				return internalGetMeta()

				default:
				break
			}
			return nil
		}

		override open func fetchChildObjectList(key: String) -> [GraphQL.AbstractResponse] {
			switch(key) {
				case "bookmarks":
				return internalGetBookmarks() ?? []

				default:
				return []
			}
		}

		open func childResponseObjectMap() -> [GraphQL.AbstractResponse]  {
			var response: [GraphQL.AbstractResponse] = []
			objectMap.keys.forEach({
				key in
				switch(key) {
					case "bookmarks":
					if let value = internalGetBookmarks() {
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
