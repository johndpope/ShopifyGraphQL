// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class ShortContentQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = ShortContent

		@discardableResult
		open func contentId(aliasSuffix: String? = nil) -> ShortContentQuery {
			addField(field: "contentId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func type(aliasSuffix: String? = nil) -> ShortContentQuery {
			addField(field: "type", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func tags(aliasSuffix: String? = nil, type: [String]? = nil, _ subfields: (TagQuery) -> Void) -> ShortContentQuery {
			var args: [String] = []

			if let type = type {
				args.append("type:[\(type.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = TagQuery()
			subfields(subquery)

			addField(field: "tags", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func photos(aliasSuffix: String? = nil, dimensions: [String]? = nil, max_width: Int32? = nil, max_height: Int32? = nil, min_width: Int32? = nil, min_height: Int32? = nil, _ subfields: (PhotoAssetQuery) -> Void) -> ShortContentQuery {
			var args: [String] = []

			if let dimensions = dimensions {
				args.append("dimensions:[\(dimensions.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")
			}

			if let max_width = max_width {
				args.append("max_width:\(max_width)")
			}

			if let max_height = max_height {
				args.append("max_height:\(max_height)")
			}

			if let min_width = min_width {
				args.append("min_width:\(min_width)")
			}

			if let min_height = min_height {
				args.append("min_height:\(min_height)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = PhotoAssetQuery()
			subfields(subquery)

			addField(field: "photos", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func list(aliasSuffix: String? = nil, _ subfields: (CmsItemQuery) -> Void) -> ShortContentQuery {
			let subquery = CmsItemQuery()
			subfields(subquery)

			addField(field: "list", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func blurb(aliasSuffix: String? = nil) -> ShortContentQuery {
			addField(field: "blurb", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func headline(aliasSuffix: String? = nil) -> ShortContentQuery {
			addField(field: "headline", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func assets(aliasSuffix: String? = nil, _ subfields: (CmsItemQuery) -> Void) -> ShortContentQuery {
			let subquery = CmsItemQuery()
			subfields(subquery)

			addField(field: "assets", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class ShortContent: GraphQL.AbstractResponse, GraphQLObject, CmsItem, SearchResultDoc {
		public typealias Query = ShortContentQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "contentId":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ShortContent.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "type":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ShortContent.self, field: fieldName, value: fieldValue)
				}
				return value

				case "tags":
				if value is NSNull { return nil }
				guard let value = value as? [[String: Any]] else {
					throw SchemaViolationError(type: ShortContent.self, field: fieldName, value: fieldValue)
				}
				return try value.map { return try Tag(fields: $0) }

				case "photos":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: ShortContent.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: ShortContent.self, field: fieldName, value: fieldValue)
				}
				return try PhotoAsset(fields: value) } as [Any?]

				case "list":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: ShortContent.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: ShortContent.self, field: fieldName, value: fieldValue)
				}
				return try UnknownCmsItem.create(fields: value) } as [Any?]

				case "blurb":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: ShortContent.self, field: fieldName, value: fieldValue)
				}
				return value

				case "headline":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: ShortContent.self, field: fieldName, value: fieldValue)
				}
				return value

				case "assets":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: ShortContent.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: ShortContent.self, field: fieldName, value: fieldValue)
				}
				return try UnknownCmsItem.create(fields: value) } as [Any?]

				default:
				throw SchemaViolationError(type: ShortContent.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "ShortContent" }

		open var contentId: GraphQL.ID {
			return internalGetContentId()
		}

		func internalGetContentId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "contentId", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var type: String {
			return internalGetType()
		}

		func internalGetType(aliasSuffix: String? = nil) -> String {
			return field(field: "type", aliasSuffix: aliasSuffix) as! String
		}

		open var tags: [BAMify.Tag]? {
			return internalGetTags()
		}

		open func aliasedTags(aliasSuffix: String) -> [BAMify.Tag]? {
			return internalGetTags(aliasSuffix: aliasSuffix)
		}

		func internalGetTags(aliasSuffix: String? = nil) -> [BAMify.Tag]? {
			return field(field: "tags", aliasSuffix: aliasSuffix) as! [BAMify.Tag]?
		}

		open var photos: [BAMify.PhotoAsset?]? {
			return internalGetPhotos()
		}

		open func aliasedPhotos(aliasSuffix: String) -> [BAMify.PhotoAsset?]? {
			return internalGetPhotos(aliasSuffix: aliasSuffix)
		}

		func internalGetPhotos(aliasSuffix: String? = nil) -> [BAMify.PhotoAsset?]? {
			return field(field: "photos", aliasSuffix: aliasSuffix) as! [BAMify.PhotoAsset?]?
		}

		open var list: [CmsItem?]? {
			return internalGetList()
		}

		func internalGetList(aliasSuffix: String? = nil) -> [CmsItem?]? {
			return field(field: "list", aliasSuffix: aliasSuffix) as! [CmsItem?]?
		}

		open var blurb: String? {
			return internalGetBlurb()
		}

		func internalGetBlurb(aliasSuffix: String? = nil) -> String? {
			return field(field: "blurb", aliasSuffix: aliasSuffix) as! String?
		}

		open var headline: String? {
			return internalGetHeadline()
		}

		func internalGetHeadline(aliasSuffix: String? = nil) -> String? {
			return field(field: "headline", aliasSuffix: aliasSuffix) as! String?
		}

		open var assets: [CmsItem?]? {
			return internalGetAssets()
		}

		func internalGetAssets(aliasSuffix: String? = nil) -> [CmsItem?]? {
			return field(field: "assets", aliasSuffix: aliasSuffix) as! [CmsItem?]?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "contentId":

				return .scalar

				case "type":

				return .scalar

				case "tags":

				return .objectList

				case "photos":

				return .objectList

				case "list":

				return .objectList

				case "blurb":

				return .scalar

				case "headline":

				return .scalar

				case "assets":

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
				case "tags":
				return internalGetTags() ?? []

				case "photos":
				return internalGetPhotos() ?? []

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
