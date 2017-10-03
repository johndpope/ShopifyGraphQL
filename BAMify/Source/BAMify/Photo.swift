// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class PhotoQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Photo

		@discardableResult
		open func contentId(aliasSuffix: String? = nil) -> PhotoQuery {
			addField(field: "contentId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func type(aliasSuffix: String? = nil) -> PhotoQuery {
			addField(field: "type", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func tags(aliasSuffix: String? = nil, type: [String]? = nil, _ subfields: (TagQuery) -> Void) -> PhotoQuery {
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
		open func height(aliasSuffix: String? = nil) -> PhotoQuery {
			addField(field: "height", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func imageLocation(aliasSuffix: String? = nil) -> PhotoQuery {
			addField(field: "imageLocation", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func masterCutId(aliasSuffix: String? = nil) -> PhotoQuery {
			addField(field: "masterCutId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func width(aliasSuffix: String? = nil) -> PhotoQuery {
			addField(field: "width", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class Photo: GraphQL.AbstractResponse, GraphQLObject, CmsItem {
		public typealias Query = PhotoQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "contentId":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Photo.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "type":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Photo.self, field: fieldName, value: fieldValue)
				}
				return value

				case "tags":
				if value is NSNull { return nil }
				guard let value = value as? [[String: Any]] else {
					throw SchemaViolationError(type: Photo.self, field: fieldName, value: fieldValue)
				}
				return try value.map { return try Tag(fields: $0) }

				case "height":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: Photo.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "imageLocation":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Photo.self, field: fieldName, value: fieldValue)
				}
				return value

				case "masterCutId":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: Photo.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "width":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: Photo.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				default:
				throw SchemaViolationError(type: Photo.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "Photo" }

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

		open var height: Int32? {
			return internalGetHeight()
		}

		func internalGetHeight(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "height", aliasSuffix: aliasSuffix) as! Int32?
		}

		open var imageLocation: String? {
			return internalGetImageLocation()
		}

		func internalGetImageLocation(aliasSuffix: String? = nil) -> String? {
			return field(field: "imageLocation", aliasSuffix: aliasSuffix) as! String?
		}

		open var masterCutId: Int32? {
			return internalGetMasterCutId()
		}

		func internalGetMasterCutId(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "masterCutId", aliasSuffix: aliasSuffix) as! Int32?
		}

		open var width: Int32? {
			return internalGetWidth()
		}

		func internalGetWidth(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "width", aliasSuffix: aliasSuffix) as! Int32?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "contentId":

				return .scalar

				case "type":

				return .scalar

				case "tags":

				return .objectList

				case "height":

				return .scalar

				case "imageLocation":

				return .scalar

				case "masterCutId":

				return .scalar

				case "width":

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
