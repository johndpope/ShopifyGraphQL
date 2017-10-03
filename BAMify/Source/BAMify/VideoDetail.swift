// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class VideoDetailQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = VideoDetail

		@discardableResult
		open func key(aliasSuffix: String? = nil) -> VideoDetailQuery {
			addField(field: "key", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func value(aliasSuffix: String? = nil, _ subfields: (ContentOrContentsQuery) -> Void) -> VideoDetailQuery {
			let subquery = ContentOrContentsQuery()
			subfields(subquery)

			addField(field: "value", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class VideoDetail: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = VideoDetailQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "key":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: VideoDetail.self, field: fieldName, value: fieldValue)
				}
				return value

				case "value":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: VideoDetail.self, field: fieldName, value: fieldValue)
				}
				return try UnknownContentOrContents.create(fields: value)

				default:
				throw SchemaViolationError(type: VideoDetail.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "VideoDetail" }

		open var key: String? {
			return internalGetKey()
		}

		func internalGetKey(aliasSuffix: String? = nil) -> String? {
			return field(field: "key", aliasSuffix: aliasSuffix) as! String?
		}

		open var value: ContentOrContents? {
			return internalGetValue()
		}

		func internalGetValue(aliasSuffix: String? = nil) -> ContentOrContents? {
			return field(field: "value", aliasSuffix: aliasSuffix) as! ContentOrContents?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "key":

				return .scalar

				case "value":

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
