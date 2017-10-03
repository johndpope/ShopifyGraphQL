// Generated from graphql_swift_gen gem
import Foundation

public protocol ContentOrContents {
	var typeName: String { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension BAMify {
	open class ContentOrContentsQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = ContentOrContents

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onAiring(subfields: (AiringQuery) -> Void) -> ContentOrContentsQuery {
			let subquery = AiringQuery()
			subfields(subquery)
			addInlineFragment(on: "Airing", subfields: subquery)
			return self
		}

		@discardableResult
		open func onCollection(subfields: (CollectionQuery) -> Void) -> ContentOrContentsQuery {
			let subquery = CollectionQuery()
			subfields(subquery)
			addInlineFragment(on: "Collection", subfields: subquery)
			return self
		}

		@discardableResult
		open func onList(subfields: (ListQuery) -> Void) -> ContentOrContentsQuery {
			let subquery = ListQuery()
			subfields(subquery)
			addInlineFragment(on: "List", subfields: subquery)
			return self
		}

		@discardableResult
		open func onMediaList(subfields: (MediaListQuery) -> Void) -> ContentOrContentsQuery {
			let subquery = MediaListQuery()
			subfields(subquery)
			addInlineFragment(on: "MediaList", subfields: subquery)
			return self
		}

		@discardableResult
		open func onVideo(subfields: (VideoQuery) -> Void) -> ContentOrContentsQuery {
			let subquery = VideoQuery()
			subfields(subquery)
			addInlineFragment(on: "Video", subfields: subquery)
			return self
		}
	}

	open class UnknownContentOrContents: GraphQL.AbstractResponse, GraphQLObject, ContentOrContents {
		public typealias Query = ContentOrContentsQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				default:
				throw SchemaViolationError(type: UnknownContentOrContents.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> ContentOrContents {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownContentOrContents.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "Airing":
				return try Airing.init(fields: fields)

				case "Collection":
				return try Collection.init(fields: fields)

				case "List":
				return try List.init(fields: fields)

				case "MediaList":
				return try MediaList.init(fields: fields)

				case "Video":
				return try Video.init(fields: fields)

				default:
				return try UnknownContentOrContents.init(fields: fields)
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
