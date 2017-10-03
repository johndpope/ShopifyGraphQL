// Generated from graphql_swift_gen gem
import Foundation

public protocol Watchable {
	var typeName: String { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension BAMify {
	open class WatchableQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Watchable

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onAiring(subfields: (AiringQuery) -> Void) -> WatchableQuery {
			let subquery = AiringQuery()
			subfields(subquery)
			addInlineFragment(on: "Airing", subfields: subquery)
			return self
		}

		@discardableResult
		open func onCollection(subfields: (CollectionQuery) -> Void) -> WatchableQuery {
			let subquery = CollectionQuery()
			subfields(subquery)
			addInlineFragment(on: "Collection", subfields: subquery)
			return self
		}

		@discardableResult
		open func onSeries(subfields: (SeriesQuery) -> Void) -> WatchableQuery {
			let subquery = SeriesQuery()
			subfields(subquery)
			addInlineFragment(on: "Series", subfields: subquery)
			return self
		}

		@discardableResult
		open func onVideo(subfields: (VideoQuery) -> Void) -> WatchableQuery {
			let subquery = VideoQuery()
			subfields(subquery)
			addInlineFragment(on: "Video", subfields: subquery)
			return self
		}
	}

	open class UnknownWatchable: GraphQL.AbstractResponse, GraphQLObject, Watchable {
		public typealias Query = WatchableQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				default:
				throw SchemaViolationError(type: UnknownWatchable.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> Watchable {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownWatchable.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "Airing":
				return try Airing.init(fields: fields)

				case "Collection":
				return try Collection.init(fields: fields)

				case "Series":
				return try Series.init(fields: fields)

				case "Video":
				return try Video.init(fields: fields)

				default:
				return try UnknownWatchable.init(fields: fields)
			}
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
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
