// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class SearchHitMetaQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = SearchHitMeta

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> SearchHitMetaQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func type(aliasSuffix: String? = nil) -> SearchHitMetaQuery {
			addField(field: "type", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func url(aliasSuffix: String? = nil) -> SearchHitMetaQuery {
			addField(field: "url", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func title(aliasSuffix: String? = nil) -> SearchHitMetaQuery {
			addField(field: "title", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func snippet(aliasSuffix: String? = nil) -> SearchHitMetaQuery {
			addField(field: "snippet", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func language(aliasSuffix: String? = nil) -> SearchHitMetaQuery {
			addField(field: "language", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func publishTimestamp(aliasSuffix: String? = nil) -> SearchHitMetaQuery {
			addField(field: "publish_timestamp", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func displayTimestamp(aliasSuffix: String? = nil) -> SearchHitMetaQuery {
			addField(field: "display_timestamp", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func updateTimestamp(aliasSuffix: String? = nil) -> SearchHitMetaQuery {
			addField(field: "update_timestamp", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func sortTimestamp(aliasSuffix: String? = nil) -> SearchHitMetaQuery {
			addField(field: "sort_timestamp", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func score(aliasSuffix: String? = nil) -> SearchHitMetaQuery {
			addField(field: "score", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func tags(aliasSuffix: String? = nil, type: [String]? = nil, _ subfields: (SearchHitMetaTagQuery) -> Void) -> SearchHitMetaQuery {
			var args: [String] = []

			if let type = type {
				args.append("type:[\(type.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = SearchHitMetaTagQuery()
			subfields(subquery)

			addField(field: "tags", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func image(aliasSuffix: String? = nil, dimensions: [String]? = nil, max_width: Int32? = nil, max_height: Int32? = nil, min_width: Int32? = nil, min_height: Int32? = nil, _ subfields: (ImageCutQuery) -> Void) -> SearchHitMetaQuery {
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

			let subquery = ImageCutQuery()
			subfields(subquery)

			addField(field: "image", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}
	}

	open class SearchHitMeta: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = SearchHitMetaQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "id":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: SearchHitMeta.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "type":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: SearchHitMeta.self, field: fieldName, value: fieldValue)
				}
				return value

				case "url":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: SearchHitMeta.self, field: fieldName, value: fieldValue)
				}
				return value

				case "title":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: SearchHitMeta.self, field: fieldName, value: fieldValue)
				}
				return value

				case "snippet":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: SearchHitMeta.self, field: fieldName, value: fieldValue)
				}
				return value

				case "language":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: SearchHitMeta.self, field: fieldName, value: fieldValue)
				}
				return value

				case "publish_timestamp":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: SearchHitMeta.self, field: fieldName, value: fieldValue)
				}
				return value

				case "display_timestamp":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: SearchHitMeta.self, field: fieldName, value: fieldValue)
				}
				return value

				case "update_timestamp":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: SearchHitMeta.self, field: fieldName, value: fieldValue)
				}
				return value

				case "sort_timestamp":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: SearchHitMeta.self, field: fieldName, value: fieldValue)
				}
				return value

				case "score":
				if value is NSNull { return nil }
				guard let value = value as? Double else {
					throw SchemaViolationError(type: SearchHitMeta.self, field: fieldName, value: fieldValue)
				}
				return value

				case "tags":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: SearchHitMeta.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: SearchHitMeta.self, field: fieldName, value: fieldValue)
				}
				return try SearchHitMetaTag(fields: value) } as [Any?]

				case "image":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: SearchHitMeta.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: SearchHitMeta.self, field: fieldName, value: fieldValue)
				}
				return try ImageCut(fields: value) } as [Any?]

				default:
				throw SchemaViolationError(type: SearchHitMeta.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "SearchHitMeta" }

		open var id: GraphQL.ID? {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID? {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID?
		}

		open var type: String? {
			return internalGetType()
		}

		func internalGetType(aliasSuffix: String? = nil) -> String? {
			return field(field: "type", aliasSuffix: aliasSuffix) as! String?
		}

		open var url: String? {
			return internalGetUrl()
		}

		func internalGetUrl(aliasSuffix: String? = nil) -> String? {
			return field(field: "url", aliasSuffix: aliasSuffix) as! String?
		}

		open var title: String? {
			return internalGetTitle()
		}

		func internalGetTitle(aliasSuffix: String? = nil) -> String? {
			return field(field: "title", aliasSuffix: aliasSuffix) as! String?
		}

		open var snippet: String? {
			return internalGetSnippet()
		}

		func internalGetSnippet(aliasSuffix: String? = nil) -> String? {
			return field(field: "snippet", aliasSuffix: aliasSuffix) as! String?
		}

		open var language: String? {
			return internalGetLanguage()
		}

		func internalGetLanguage(aliasSuffix: String? = nil) -> String? {
			return field(field: "language", aliasSuffix: aliasSuffix) as! String?
		}

		open var publishTimestamp: String? {
			return internalGetPublishTimestamp()
		}

		func internalGetPublishTimestamp(aliasSuffix: String? = nil) -> String? {
			return field(field: "publish_timestamp", aliasSuffix: aliasSuffix) as! String?
		}

		open var displayTimestamp: String? {
			return internalGetDisplayTimestamp()
		}

		func internalGetDisplayTimestamp(aliasSuffix: String? = nil) -> String? {
			return field(field: "display_timestamp", aliasSuffix: aliasSuffix) as! String?
		}

		open var updateTimestamp: String? {
			return internalGetUpdateTimestamp()
		}

		func internalGetUpdateTimestamp(aliasSuffix: String? = nil) -> String? {
			return field(field: "update_timestamp", aliasSuffix: aliasSuffix) as! String?
		}

		open var sortTimestamp: String? {
			return internalGetSortTimestamp()
		}

		func internalGetSortTimestamp(aliasSuffix: String? = nil) -> String? {
			return field(field: "sort_timestamp", aliasSuffix: aliasSuffix) as! String?
		}

		open var score: Double? {
			return internalGetScore()
		}

		func internalGetScore(aliasSuffix: String? = nil) -> Double? {
			return field(field: "score", aliasSuffix: aliasSuffix) as! Double?
		}

		open var tags: [BAMify.SearchHitMetaTag?]? {
			return internalGetTags()
		}

		open func aliasedTags(aliasSuffix: String) -> [BAMify.SearchHitMetaTag?]? {
			return internalGetTags(aliasSuffix: aliasSuffix)
		}

		func internalGetTags(aliasSuffix: String? = nil) -> [BAMify.SearchHitMetaTag?]? {
			return field(field: "tags", aliasSuffix: aliasSuffix) as! [BAMify.SearchHitMetaTag?]?
		}

		open var image: [BAMify.ImageCut?]? {
			return internalGetImage()
		}

		open func aliasedImage(aliasSuffix: String) -> [BAMify.ImageCut?]? {
			return internalGetImage(aliasSuffix: aliasSuffix)
		}

		func internalGetImage(aliasSuffix: String? = nil) -> [BAMify.ImageCut?]? {
			return field(field: "image", aliasSuffix: aliasSuffix) as! [BAMify.ImageCut?]?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "id":

				return .scalar

				case "type":

				return .scalar

				case "url":

				return .scalar

				case "title":

				return .scalar

				case "snippet":

				return .scalar

				case "language":

				return .scalar

				case "publish_timestamp":

				return .scalar

				case "display_timestamp":

				return .scalar

				case "update_timestamp":

				return .scalar

				case "sort_timestamp":

				return .scalar

				case "score":

				return .scalar

				case "tags":

				return .objectList

				case "image":

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
				return internalGetTags()  as? [GraphQL.AbstractResponse]  ?? []

				case "image":
				return internalGetImage() as? [GraphQL.AbstractResponse]  ?? []

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
