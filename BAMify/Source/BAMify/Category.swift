// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class CategoryQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Category

		@discardableResult
		open func contentId(aliasSuffix: String? = nil) -> CategoryQuery {
			addField(field: "contentId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func type(aliasSuffix: String? = nil) -> CategoryQuery {
			addField(field: "type", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func tags(aliasSuffix: String? = nil, type: [String]? = nil, _ subfields: (TagQuery) -> Void) -> CategoryQuery {
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
		open func defaultAssetImage(aliasSuffix: String? = nil, dimensions: [String]? = nil, max_width: Int32? = nil, max_height: Int32? = nil, min_width: Int32? = nil, min_height: Int32? = nil, _ subfields: (PhotoAssetQuery) -> Void) -> CategoryQuery {
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

			addField(field: "defaultAssetImage", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func logoImage(aliasSuffix: String? = nil, dimensions: [String]? = nil, max_width: Int32? = nil, max_height: Int32? = nil, min_width: Int32? = nil, min_height: Int32? = nil, _ subfields: (PhotoAssetQuery) -> Void) -> CategoryQuery {
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

			addField(field: "logoImage", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func sport(aliasSuffix: String? = nil) -> CategoryQuery {
			addField(field: "sport", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class Category: GraphQL.AbstractResponse, GraphQLObject, CmsItem, SearchResultDoc {
		public typealias Query = CategoryQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "contentId":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Category.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "type":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Category.self, field: fieldName, value: fieldValue)
				}
				return value

				case "tags":
				if value is NSNull { return nil }
				guard let value = value as? [[String: Any]] else {
					throw SchemaViolationError(type: Category.self, field: fieldName, value: fieldValue)
				}
				return try value.map { return try Tag(fields: $0) }

				case "defaultAssetImage":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: Category.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: Category.self, field: fieldName, value: fieldValue)
				}
				return try PhotoAsset(fields: value) } as [Any?]

				case "logoImage":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: Category.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: Category.self, field: fieldName, value: fieldValue)
				}
				return try PhotoAsset(fields: value) } as [Any?]

				case "sport":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Category.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: Category.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "Category" }

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

		open var defaultAssetImage: [BAMify.PhotoAsset?]? {
			return internalGetDefaultAssetImage()
		}

		open func aliasedDefaultAssetImage(aliasSuffix: String) -> [BAMify.PhotoAsset?]? {
			return internalGetDefaultAssetImage(aliasSuffix: aliasSuffix)
		}

		func internalGetDefaultAssetImage(aliasSuffix: String? = nil) -> [BAMify.PhotoAsset?]? {
			return field(field: "defaultAssetImage", aliasSuffix: aliasSuffix) as! [BAMify.PhotoAsset?]?
		}

		open var logoImage: [BAMify.PhotoAsset?]? {
			return internalGetLogoImage()
		}

		open func aliasedLogoImage(aliasSuffix: String) -> [BAMify.PhotoAsset?]? {
			return internalGetLogoImage(aliasSuffix: aliasSuffix)
		}

		func internalGetLogoImage(aliasSuffix: String? = nil) -> [BAMify.PhotoAsset?]? {
			return field(field: "logoImage", aliasSuffix: aliasSuffix) as! [BAMify.PhotoAsset?]?
		}

		open var sport: String? {
			return internalGetSport()
		}

		func internalGetSport(aliasSuffix: String? = nil) -> String? {
			return field(field: "sport", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "contentId":

				return .scalar

				case "type":

				return .scalar

				case "tags":

				return .objectList

				case "defaultAssetImage":

				return .objectList

				case "logoImage":

				return .objectList

				case "sport":

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
				case "tags":
				return internalGetTags() ?? []

				case "defaultAssetImage":
				return internalGetDefaultAssetImage() as? GraphQL.AbstractResponse ?? []

				case "logoImage":
				return internalGetLogoImage() as? GraphQL.AbstractResponse ?? []

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
