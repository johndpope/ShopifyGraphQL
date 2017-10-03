// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class ImageCutQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = ImageCut

		@discardableResult
		open func aspectRatio(aliasSuffix: String? = nil) -> ImageCutQuery {
			addField(field: "aspectRatio", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func height(aliasSuffix: String? = nil) -> ImageCutQuery {
			addField(field: "height", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func width(aliasSuffix: String? = nil) -> ImageCutQuery {
			addField(field: "width", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func src(aliasSuffix: String? = nil) -> ImageCutQuery {
			addField(field: "src", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func at2x(aliasSuffix: String? = nil) -> ImageCutQuery {
			addField(field: "at2x", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func at3x(aliasSuffix: String? = nil) -> ImageCutQuery {
			addField(field: "at3x", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func dimensions(aliasSuffix: String? = nil) -> ImageCutQuery {
			addField(field: "dimensions", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class ImageCut: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = ImageCutQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "aspectRatio":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: ImageCut.self, field: fieldName, value: fieldValue)
				}
				return value

				case "height":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: ImageCut.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "width":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: ImageCut.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "src":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: ImageCut.self, field: fieldName, value: fieldValue)
				}
				return value

				case "at2x":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: ImageCut.self, field: fieldName, value: fieldValue)
				}
				return value

				case "at3x":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: ImageCut.self, field: fieldName, value: fieldValue)
				}
				return value

				case "dimensions":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: ImageCut.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: ImageCut.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "ImageCut" }

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

		open var src: String? {
			return internalGetSrc()
		}

		func internalGetSrc(aliasSuffix: String? = nil) -> String? {
			return field(field: "src", aliasSuffix: aliasSuffix) as! String?
		}

		open var at2x: String? {
			return internalGetAt2x()
		}

		func internalGetAt2x(aliasSuffix: String? = nil) -> String? {
			return field(field: "at2x", aliasSuffix: aliasSuffix) as! String?
		}

		open var at3x: String? {
			return internalGetAt3x()
		}

		func internalGetAt3x(aliasSuffix: String? = nil) -> String? {
			return field(field: "at3x", aliasSuffix: aliasSuffix) as! String?
		}

		open var dimensions: String? {
			return internalGetDimensions()
		}

		func internalGetDimensions(aliasSuffix: String? = nil) -> String? {
			return field(field: "dimensions", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "aspectRatio":

				return .scalar

				case "height":

				return .scalar

				case "width":

				return .scalar

				case "src":

				return .scalar

				case "at2x":

				return .scalar

				case "at3x":

				return .scalar

				case "dimensions":

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
