// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class MasterCutQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = MasterCut

		@discardableResult
		open func contentId(aliasSuffix: String? = nil) -> MasterCutQuery {
			addField(field: "contentId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func type(aliasSuffix: String? = nil) -> MasterCutQuery {
			addField(field: "type", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func tags(aliasSuffix: String? = nil, type: [String]? = nil, _ subfields: (TagQuery) -> Void) -> MasterCutQuery {
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
		open func aspectRatio(aliasSuffix: String? = nil) -> MasterCutQuery {
			addField(field: "aspectRatio", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func height(aliasSuffix: String? = nil) -> MasterCutQuery {
			addField(field: "height", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func width(aliasSuffix: String? = nil) -> MasterCutQuery {
			addField(field: "width", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func x1(aliasSuffix: String? = nil) -> MasterCutQuery {
			addField(field: "x1", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func y1(aliasSuffix: String? = nil) -> MasterCutQuery {
			addField(field: "y1", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class MasterCut: GraphQL.AbstractResponse, GraphQLObject, CmsItem {
		public typealias Query = MasterCutQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "contentId":
				guard let value = value as? String else {
					throw SchemaViolationError(type: MasterCut.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "type":
				guard let value = value as? String else {
					throw SchemaViolationError(type: MasterCut.self, field: fieldName, value: fieldValue)
				}
				return value

				case "tags":
				if value is NSNull { return nil }
				guard let value = value as? [[String: Any]] else {
					throw SchemaViolationError(type: MasterCut.self, field: fieldName, value: fieldValue)
				}
				return try value.map { return try Tag(fields: $0) }

				case "aspectRatio":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: MasterCut.self, field: fieldName, value: fieldValue)
				}
				return value

				case "height":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: MasterCut.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "width":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: MasterCut.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "x1":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: MasterCut.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "y1":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: MasterCut.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				default:
				throw SchemaViolationError(type: MasterCut.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "MasterCut" }

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

		open var aspectRatio: String? {
			return internalGetAspectRatio()
		}

		func internalGetAspectRatio(aliasSuffix: String? = nil) -> String? {
			return field(field: "aspectRatio", aliasSuffix: aliasSuffix) as! String?
		}

		open var height: Int32? {
			return internalGetHeight()
		}

		func internalGetHeight(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "height", aliasSuffix: aliasSuffix) as! Int32?
		}

		open var width: Int32? {
			return internalGetWidth()
		}

		func internalGetWidth(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "width", aliasSuffix: aliasSuffix) as! Int32?
		}

		open var x1: Int32? {
			return internalGetX1()
		}

		func internalGetX1(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "x1", aliasSuffix: aliasSuffix) as! Int32?
		}

		open var y1: Int32? {
			return internalGetY1()
		}

		func internalGetY1(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "y1", aliasSuffix: aliasSuffix) as! Int32?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "contentId":

				return .scalar

				case "type":

				return .scalar

				case "tags":

				return .objectList

				case "aspectRatio":

				return .scalar

				case "height":

				return .scalar

				case "width":

				return .scalar

				case "x1":

				return .scalar

				case "y1":

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
