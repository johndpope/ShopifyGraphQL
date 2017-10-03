// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class MediaListQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = MediaList

		@discardableResult
		open func name(aliasSuffix: String? = nil) -> MediaListQuery {
			addField(field: "name", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func videos(aliasSuffix: String? = nil, _ subfields: (MediaQuery) -> Void) -> MediaListQuery {
			let subquery = MediaQuery()
			subfields(subquery)

			addField(field: "videos", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class MediaList: GraphQL.AbstractResponse, GraphQLObject, ContentOrContents, SearchResultDoc {
		public typealias Query = MediaListQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "name":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: MediaList.self, field: fieldName, value: fieldValue)
				}
				return value

				case "videos":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: MediaList.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: MediaList.self, field: fieldName, value: fieldValue)
				}
				return try UnknownMedia.create(fields: value) } as [Any?]

				default:
				throw SchemaViolationError(type: MediaList.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "MediaList" }

		open var name: String? {
			return internalGetName()
		}

		func internalGetName(aliasSuffix: String? = nil) -> String? {
			return field(field: "name", aliasSuffix: aliasSuffix) as! String?
		}

		open var videos: [Media?]? {
			return internalGetVideos()
		}

		func internalGetVideos(aliasSuffix: String? = nil) -> [Media?]? {
			return field(field: "videos", aliasSuffix: aliasSuffix) as! [Media?]?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "name":

				return .scalar

				case "videos":

				return .objectList

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
