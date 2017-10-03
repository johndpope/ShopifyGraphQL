// Generated from graphql_swift_gen gem
import Foundation

public protocol VideoAiring {
	var typeName: String { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension BAMify {
	open class VideoAiringQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = VideoAiring

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onAiring(subfields: (AiringQuery) -> Void) -> VideoAiringQuery {
			let subquery = AiringQuery()
			subfields(subquery)
			addInlineFragment(on: "Airing", subfields: subquery)
			return self
		}

		@discardableResult
		open func onVideo(subfields: (VideoQuery) -> Void) -> VideoAiringQuery {
			let subquery = VideoQuery()
			subfields(subquery)
			addInlineFragment(on: "Video", subfields: subquery)
			return self
		}
	}

	open class UnknownVideoAiring: GraphQL.AbstractResponse, GraphQLObject, VideoAiring {
		public typealias Query = VideoAiringQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				default:
				throw SchemaViolationError(type: UnknownVideoAiring.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> VideoAiring {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownVideoAiring.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "Airing":
				return try Airing.init(fields: fields)

				case "Video":
				return try Video.init(fields: fields)

				default:
				return try UnknownVideoAiring.init(fields: fields)
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
