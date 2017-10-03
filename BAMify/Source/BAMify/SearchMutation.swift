// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class SearchMutationQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = SearchMutation

		open override var description: String {
			return "mutation" + super.description
		}

		@discardableResult
		open func deleteBookmarks(aliasSuffix: String? = nil, mediaIds: [GraphQL.ID]? = nil, _ subfields: (DeleteBookmarksQuery) -> Void) -> SearchMutationQuery {
			var args: [String] = []

			if let mediaIds = mediaIds {
				args.append("mediaIds:[\(mediaIds.map{ "\(GraphQL.quoteString(input: "\($0.rawValue)"))" }.joined(separator: ","))]")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = DeleteBookmarksQuery()
			subfields(subquery)

			addField(field: "deleteBookmarks", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func deleteAllBookmarks(aliasSuffix: String? = nil, _ subfields: (DeleteAllBookmarksQuery) -> Void) -> SearchMutationQuery {
			let subquery = DeleteAllBookmarksQuery()
			subfields(subquery)

			addField(field: "deleteAllBookmarks", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func addToWatchlist(aliasSuffix: String? = nil, contentIds: [GraphQL.ID]? = nil, _ subfields: (AddToWatchlistQuery) -> Void) -> SearchMutationQuery {
			var args: [String] = []

			if let contentIds = contentIds {
				args.append("contentIds:[\(contentIds.map{ "\(GraphQL.quoteString(input: "\($0.rawValue)"))" }.joined(separator: ","))]")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = AddToWatchlistQuery()
			subfields(subquery)

			addField(field: "addToWatchlist", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func deleteFromWatchlist(aliasSuffix: String? = nil, contentIds: [GraphQL.ID]? = nil, _ subfields: (DeleteFromWatchlistQuery) -> Void) -> SearchMutationQuery {
			var args: [String] = []

			if let contentIds = contentIds {
				args.append("contentIds:[\(contentIds.map{ "\(GraphQL.quoteString(input: "\($0.rawValue)"))" }.joined(separator: ","))]")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = DeleteFromWatchlistQuery()
			subfields(subquery)

			addField(field: "deleteFromWatchlist", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func clearWatchlist(aliasSuffix: String? = nil, _ subfields: (ClearWatchlistQuery) -> Void) -> SearchMutationQuery {
			let subquery = ClearWatchlistQuery()
			subfields(subquery)

			addField(field: "clearWatchlist", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class SearchMutation: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = SearchMutationQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "deleteBookmarks":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchMutation.self, field: fieldName, value: fieldValue)
				}
				return try DeleteBookmarks(fields: value)

				case "deleteAllBookmarks":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchMutation.self, field: fieldName, value: fieldValue)
				}
				return try DeleteAllBookmarks(fields: value)

				case "addToWatchlist":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchMutation.self, field: fieldName, value: fieldValue)
				}
				return try AddToWatchlist(fields: value)

				case "deleteFromWatchlist":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchMutation.self, field: fieldName, value: fieldValue)
				}
				return try DeleteFromWatchlist(fields: value)

				case "clearWatchlist":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchMutation.self, field: fieldName, value: fieldValue)
				}
				return try ClearWatchlist(fields: value)

				default:
				throw SchemaViolationError(type: SearchMutation.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "SearchMutation" }

		open var deleteBookmarks: BAMify.DeleteBookmarks? {
			return internalGetDeleteBookmarks()
		}

		open func aliasedDeleteBookmarks(aliasSuffix: String) -> BAMify.DeleteBookmarks? {
			return internalGetDeleteBookmarks(aliasSuffix: aliasSuffix)
		}

		func internalGetDeleteBookmarks(aliasSuffix: String? = nil) -> BAMify.DeleteBookmarks? {
			return field(field: "deleteBookmarks", aliasSuffix: aliasSuffix) as! BAMify.DeleteBookmarks?
		}

		open var deleteAllBookmarks: BAMify.DeleteAllBookmarks? {
			return internalGetDeleteAllBookmarks()
		}

		func internalGetDeleteAllBookmarks(aliasSuffix: String? = nil) -> BAMify.DeleteAllBookmarks? {
			return field(field: "deleteAllBookmarks", aliasSuffix: aliasSuffix) as! BAMify.DeleteAllBookmarks?
		}

		open var addToWatchlist: BAMify.AddToWatchlist? {
			return internalGetAddToWatchlist()
		}

		open func aliasedAddToWatchlist(aliasSuffix: String) -> BAMify.AddToWatchlist? {
			return internalGetAddToWatchlist(aliasSuffix: aliasSuffix)
		}

		func internalGetAddToWatchlist(aliasSuffix: String? = nil) -> BAMify.AddToWatchlist? {
			return field(field: "addToWatchlist", aliasSuffix: aliasSuffix) as! BAMify.AddToWatchlist?
		}

		open var deleteFromWatchlist: BAMify.DeleteFromWatchlist? {
			return internalGetDeleteFromWatchlist()
		}

		open func aliasedDeleteFromWatchlist(aliasSuffix: String) -> BAMify.DeleteFromWatchlist? {
			return internalGetDeleteFromWatchlist(aliasSuffix: aliasSuffix)
		}

		func internalGetDeleteFromWatchlist(aliasSuffix: String? = nil) -> BAMify.DeleteFromWatchlist? {
			return field(field: "deleteFromWatchlist", aliasSuffix: aliasSuffix) as! BAMify.DeleteFromWatchlist?
		}

		open var clearWatchlist: BAMify.ClearWatchlist? {
			return internalGetClearWatchlist()
		}

		func internalGetClearWatchlist(aliasSuffix: String? = nil) -> BAMify.ClearWatchlist? {
			return field(field: "clearWatchlist", aliasSuffix: aliasSuffix) as! BAMify.ClearWatchlist?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "deleteBookmarks":

				return .object

				case "deleteAllBookmarks":

				return .object

				case "addToWatchlist":

				return .object

				case "deleteFromWatchlist":

				return .object

				case "clearWatchlist":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "deleteBookmarks":
				return internalGetDeleteBookmarks()

				case "deleteAllBookmarks":
				return internalGetDeleteAllBookmarks()

				case "addToWatchlist":
				return internalGetAddToWatchlist()

				case "deleteFromWatchlist":
				return internalGetDeleteFromWatchlist()

				case "clearWatchlist":
				return internalGetClearWatchlist()

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
					case "deleteBookmarks":
					if let value = internalGetDeleteBookmarks() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "deleteAllBookmarks":
					if let value = internalGetDeleteAllBookmarks() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "addToWatchlist":
					if let value = internalGetAddToWatchlist() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "deleteFromWatchlist":
					if let value = internalGetDeleteFromWatchlist() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "clearWatchlist":
					if let value = internalGetClearWatchlist() {
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
