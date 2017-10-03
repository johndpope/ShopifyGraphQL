// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class PostPlayResponseQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = PostPlayResponse

		@discardableResult
		open func meta(aliasSuffix: String? = nil, _ subfields: (MetaQuery) -> Void) -> PostPlayResponseQuery {
			let subquery = MetaQuery()
			subfields(subquery)

			addField(field: "meta", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func content(aliasSuffix: String? = nil, _ subfields: (VideoAiringQuery) -> Void) -> PostPlayResponseQuery {
			let subquery = VideoAiringQuery()
			subfields(subquery)

			addField(field: "content", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class PostPlayResponse: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = PostPlayResponseQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "meta":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PostPlayResponse.self, field: fieldName, value: fieldValue)
				}
				return try Meta(fields: value)

				case "content":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PostPlayResponse.self, field: fieldName, value: fieldValue)
				}
				return try UnknownVideoAiring.create(fields: value)

				default:
				throw SchemaViolationError(type: PostPlayResponse.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "PostPlayResponse" }

		open var meta: BAMify.Meta? {
			return internalGetMeta()
		}

		func internalGetMeta(aliasSuffix: String? = nil) -> BAMify.Meta? {
			return field(field: "meta", aliasSuffix: aliasSuffix) as! BAMify.Meta?
		}

		open var content: VideoAiring? {
			return internalGetContent()
		}

		func internalGetContent(aliasSuffix: String? = nil) -> VideoAiring? {
			return field(field: "content", aliasSuffix: aliasSuffix) as! VideoAiring?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "meta":

				return .object

				case "content":

				return .scalar

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
				default:
				return []
			}
		}

		open func childResponseObjectMap() -> [GraphQL.AbstractResponse]  {
			var response: [GraphQL.AbstractResponse] = []
			objectMap.keys.forEach({
				key in
				switch(key) {
					case "meta":
					if let value = internalGetMeta() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "content":
					if let value = internalGetContent() {
						response.append(value as! GraphQL.AbstractResponse)
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
