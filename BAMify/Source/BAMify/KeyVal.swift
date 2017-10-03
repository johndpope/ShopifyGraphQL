// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class KeyValQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = KeyVal

		@discardableResult
		open func key(aliasSuffix: String? = nil) -> KeyValQuery {
			addField(field: "key", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func val(aliasSuffix: String? = nil) -> KeyValQuery {
			addField(field: "val", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class KeyVal: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = KeyValQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "key":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: KeyVal.self, field: fieldName, value: fieldValue)
				}
				return value

				case "val":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: KeyVal.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: KeyVal.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "KeyVal" }

		open var key: String? {
			return internalGetKey()
		}

		func internalGetKey(aliasSuffix: String? = nil) -> String? {
			return field(field: "key", aliasSuffix: aliasSuffix) as! String?
		}

		open var val: String? {
			return internalGetVal()
		}

		func internalGetVal(aliasSuffix: String? = nil) -> String? {
			return field(field: "val", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "key":

				return .scalar

				case "val":

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
