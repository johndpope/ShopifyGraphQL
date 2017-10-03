// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class DeleteFromWatchlistQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = DeleteFromWatchlist

		@discardableResult
		open func watchlistItems(aliasSuffix: String? = nil, _ subfields: (WatchlistItemQuery) -> Void) -> DeleteFromWatchlistQuery {
			let subquery = WatchlistItemQuery()
			subfields(subquery)

			addField(field: "watchlistItems", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func meta(aliasSuffix: String? = nil, _ subfields: (MetaWatchlistDeleteQuery) -> Void) -> DeleteFromWatchlistQuery {
			let subquery = MetaWatchlistDeleteQuery()
			subfields(subquery)

			addField(field: "meta", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class DeleteFromWatchlist: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = DeleteFromWatchlistQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "watchlistItems":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: DeleteFromWatchlist.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: DeleteFromWatchlist.self, field: fieldName, value: fieldValue)
				}
				return try WatchlistItem(fields: value) } as [Any?]

				case "meta":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: DeleteFromWatchlist.self, field: fieldName, value: fieldValue)
				}
				return try MetaWatchlistDelete(fields: value)

				default:
				throw SchemaViolationError(type: DeleteFromWatchlist.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "DeleteFromWatchlist" }

		open var watchlistItems: [BAMify.WatchlistItem?]? {
			return internalGetWatchlistItems()
		}

		func internalGetWatchlistItems(aliasSuffix: String? = nil) -> [BAMify.WatchlistItem?]? {
			return field(field: "watchlistItems", aliasSuffix: aliasSuffix) as! [BAMify.WatchlistItem?]?
		}

		open var meta: BAMify.MetaWatchlistDelete? {
			return internalGetMeta()
		}

		func internalGetMeta(aliasSuffix: String? = nil) -> BAMify.MetaWatchlistDelete? {
			return field(field: "meta", aliasSuffix: aliasSuffix) as! BAMify.MetaWatchlistDelete?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "watchlistItems":

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

//        override open func fetchChildObjectList(key: String) -> [GraphQL.AbstractResponse] {
//            switch(key) {
//                case "watchlistItems":
//                return internalGetWatchlistItems() ?? []
//
//                default:
//                return []
//            }
//        }

		open func childResponseObjectMap() -> [GraphQL.AbstractResponse]  {
			var response: [GraphQL.AbstractResponse] = []
			objectMap.keys.forEach({
				key in
				switch(key) {
					case "watchlistItems":
					if let value = internalGetWatchlistItems() {
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
