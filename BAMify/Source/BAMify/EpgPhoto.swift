// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class EpgPhotoQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = EpgPhoto

		@discardableResult
		open func aspectRatio(aliasSuffix: String? = nil) -> EpgPhotoQuery {
			addField(field: "aspectRatio", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func contentSize(aliasSuffix: String? = nil) -> EpgPhotoQuery {
			addField(field: "contentSize", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> EpgPhotoQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func uri(aliasSuffix: String? = nil) -> EpgPhotoQuery {
			addField(field: "uri", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func width(aliasSuffix: String? = nil) -> EpgPhotoQuery {
			addField(field: "width", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func height(aliasSuffix: String? = nil) -> EpgPhotoQuery {
			addField(field: "height", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class EpgPhoto: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = EpgPhotoQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "aspectRatio":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: EpgPhoto.self, field: fieldName, value: fieldValue)
				}
				return value

				case "contentSize":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: EpgPhoto.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EpgPhoto.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "uri":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: EpgPhoto.self, field: fieldName, value: fieldValue)
				}
				return value

				case "width":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: EpgPhoto.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "height":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: EpgPhoto.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				default:
				throw SchemaViolationError(type: EpgPhoto.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "EpgPhoto" }

		open var aspectRatio: String? {
			return internalGetAspectRatio()
		}

		func internalGetAspectRatio(aliasSuffix: String? = nil) -> String? {
			return field(field: "aspectRatio", aliasSuffix: aliasSuffix) as! String?
		}

		open var contentSize: String? {
			return internalGetContentSize()
		}

		func internalGetContentSize(aliasSuffix: String? = nil) -> String? {
			return field(field: "contentSize", aliasSuffix: aliasSuffix) as! String?
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var uri: String? {
			return internalGetUri()
		}

		func internalGetUri(aliasSuffix: String? = nil) -> String? {
			return field(field: "uri", aliasSuffix: aliasSuffix) as! String?
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

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "aspectRatio":

				return .scalar

				case "contentSize":

				return .scalar

				case "id":

				return .scalar

				case "uri":

				return .scalar

				case "width":

				return .scalar

				case "height":

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
