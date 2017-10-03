// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class PhotoAssetQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = PhotoAsset

		@discardableResult
		open func contentId(aliasSuffix: String? = nil) -> PhotoAssetQuery {
			addField(field: "contentId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func type(aliasSuffix: String? = nil) -> PhotoAssetQuery {
			addField(field: "type", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func tags(aliasSuffix: String? = nil, type: [String]? = nil, _ subfields: (TagQuery) -> Void) -> PhotoAssetQuery {
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
		open func altText(aliasSuffix: String? = nil) -> PhotoAssetQuery {
			addField(field: "altText", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func caption(aliasSuffix: String? = nil) -> PhotoAssetQuery {
			addField(field: "caption", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func credit(aliasSuffix: String? = nil) -> PhotoAssetQuery {
			addField(field: "credit", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func headline(aliasSuffix: String? = nil) -> PhotoAssetQuery {
			addField(field: "headline", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func rawImage(aliasSuffix: String? = nil) -> PhotoAssetQuery {
			addField(field: "rawImage", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func width(aliasSuffix: String? = nil) -> PhotoAssetQuery {
			addField(field: "width", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func height(aliasSuffix: String? = nil) -> PhotoAssetQuery {
			addField(field: "height", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func inning(aliasSuffix: String? = nil) -> PhotoAssetQuery {
			addField(field: "inning", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func purchaseUrl(aliasSuffix: String? = nil) -> PhotoAssetQuery {
			addField(field: "purchaseUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func masterCuts(aliasSuffix: String? = nil, _ subfields: (MasterCutQuery) -> Void) -> PhotoAssetQuery {
			let subquery = MasterCutQuery()
			subfields(subquery)

			addField(field: "masterCuts", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func photos(aliasSuffix: String? = nil, dimensions: [String]? = nil, max_width: Int32? = nil, max_height: Int32? = nil, min_width: Int32? = nil, min_height: Int32? = nil, _ subfields: (PhotoQuery) -> Void) -> PhotoAssetQuery {
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

			let subquery = PhotoQuery()
			subfields(subquery)

			addField(field: "photos", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func timestamp(aliasSuffix: String? = nil) -> PhotoAssetQuery {
			addField(field: "timestamp", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func title(aliasSuffix: String? = nil) -> PhotoAssetQuery {
			addField(field: "title", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class PhotoAsset: GraphQL.AbstractResponse, GraphQLObject, CmsItem, SearchResultDoc {
		public typealias Query = PhotoAssetQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "contentId":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PhotoAsset.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "type":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PhotoAsset.self, field: fieldName, value: fieldValue)
				}
				return value

				case "tags":
				if value is NSNull { return nil }
				guard let value = value as? [[String: Any]] else {
					throw SchemaViolationError(type: PhotoAsset.self, field: fieldName, value: fieldValue)
				}
				return try value.map { return try Tag(fields: $0) }

				case "altText":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: PhotoAsset.self, field: fieldName, value: fieldValue)
				}
				return value

				case "caption":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: PhotoAsset.self, field: fieldName, value: fieldValue)
				}
				return value

				case "credit":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: PhotoAsset.self, field: fieldName, value: fieldValue)
				}
				return value

				case "headline":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: PhotoAsset.self, field: fieldName, value: fieldValue)
				}
				return value

				case "rawImage":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: PhotoAsset.self, field: fieldName, value: fieldValue)
				}
				return value

				case "width":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: PhotoAsset.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "height":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: PhotoAsset.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "inning":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: PhotoAsset.self, field: fieldName, value: fieldValue)
				}
				return value

				case "purchaseUrl":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: PhotoAsset.self, field: fieldName, value: fieldValue)
				}
				return value

				case "masterCuts":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: PhotoAsset.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: PhotoAsset.self, field: fieldName, value: fieldValue)
				}
				return try MasterCut(fields: value) } as [Any?]

				case "photos":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: PhotoAsset.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: PhotoAsset.self, field: fieldName, value: fieldValue)
				}
				return try Photo(fields: value) } as [Any?]

				case "timestamp":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: PhotoAsset.self, field: fieldName, value: fieldValue)
				}
				return value

				case "title":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: PhotoAsset.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: PhotoAsset.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "PhotoAsset" }

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

		open var altText: String? {
			return internalGetAltText()
		}

		func internalGetAltText(aliasSuffix: String? = nil) -> String? {
			return field(field: "altText", aliasSuffix: aliasSuffix) as! String?
		}

		open var caption: String? {
			return internalGetCaption()
		}

		func internalGetCaption(aliasSuffix: String? = nil) -> String? {
			return field(field: "caption", aliasSuffix: aliasSuffix) as! String?
		}

		open var credit: String? {
			return internalGetCredit()
		}

		func internalGetCredit(aliasSuffix: String? = nil) -> String? {
			return field(field: "credit", aliasSuffix: aliasSuffix) as! String?
		}

		open var headline: String? {
			return internalGetHeadline()
		}

		func internalGetHeadline(aliasSuffix: String? = nil) -> String? {
			return field(field: "headline", aliasSuffix: aliasSuffix) as! String?
		}

		open var rawImage: String? {
			return internalGetRawImage()
		}

		func internalGetRawImage(aliasSuffix: String? = nil) -> String? {
			return field(field: "rawImage", aliasSuffix: aliasSuffix) as! String?
		}

		open var width: Int32? {
			return internalGetWidth()
		}

		func internalGetWidth(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "width", aliasSuffix: aliasSuffix) as! Int32?
		}

		open var height: Int32? {
			return internalGetHeight()
		}

		func internalGetHeight(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "height", aliasSuffix: aliasSuffix) as! Int32?
		}

		open var inning: String? {
			return internalGetInning()
		}

		func internalGetInning(aliasSuffix: String? = nil) -> String? {
			return field(field: "inning", aliasSuffix: aliasSuffix) as! String?
		}

		open var purchaseUrl: String? {
			return internalGetPurchaseUrl()
		}

		func internalGetPurchaseUrl(aliasSuffix: String? = nil) -> String? {
			return field(field: "purchaseUrl", aliasSuffix: aliasSuffix) as! String?
		}

		open var masterCuts: [BAMify.MasterCut?]? {
			return internalGetMasterCuts()
		}

		func internalGetMasterCuts(aliasSuffix: String? = nil) -> [BAMify.MasterCut?]? {
			return field(field: "masterCuts", aliasSuffix: aliasSuffix) as! [BAMify.MasterCut?]?
		}

		open var photos: [BAMify.Photo?]? {
			return internalGetPhotos()
		}

		open func aliasedPhotos(aliasSuffix: String) -> [BAMify.Photo?]? {
			return internalGetPhotos(aliasSuffix: aliasSuffix)
		}

		func internalGetPhotos(aliasSuffix: String? = nil) -> [BAMify.Photo?]? {
			return field(field: "photos", aliasSuffix: aliasSuffix) as! [BAMify.Photo?]?
		}

		open var timestamp: String? {
			return internalGetTimestamp()
		}

		func internalGetTimestamp(aliasSuffix: String? = nil) -> String? {
			return field(field: "timestamp", aliasSuffix: aliasSuffix) as! String?
		}

		open var title: String? {
			return internalGetTitle()
		}

		func internalGetTitle(aliasSuffix: String? = nil) -> String? {
			return field(field: "title", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "contentId":

				return .scalar

				case "type":

				return .scalar

				case "tags":

				return .objectList

				case "altText":

				return .scalar

				case "caption":

				return .scalar

				case "credit":

				return .scalar

				case "headline":

				return .scalar

				case "rawImage":

				return .scalar

				case "width":

				return .scalar

				case "height":

				return .scalar

				case "inning":

				return .scalar

				case "purchaseUrl":

				return .scalar

				case "masterCuts":

				return .objectList

				case "photos":

				return .objectList

				case "timestamp":

				return .scalar

				case "title":

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

				case "masterCuts":
				return internalGetMasterCuts() ?? []

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
