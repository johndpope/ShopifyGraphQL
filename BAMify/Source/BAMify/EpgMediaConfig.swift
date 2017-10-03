// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class EpgMediaConfigQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = EpgMediaConfig

		@discardableResult
		open func state(aliasSuffix: String? = nil) -> EpgMediaConfigQuery {
			addField(field: "state", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func productType(aliasSuffix: String? = nil) -> EpgMediaConfigQuery {
			addField(field: "productType", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func type(aliasSuffix: String? = nil) -> EpgMediaConfigQuery {
			addField(field: "type", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class EpgMediaConfig: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = EpgMediaConfigQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "state":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: EpgMediaConfig.self, field: fieldName, value: fieldValue)
				}
				return value

				case "productType":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: EpgMediaConfig.self, field: fieldName, value: fieldValue)
				}
				return value

				case "type":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: EpgMediaConfig.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: EpgMediaConfig.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "EpgMediaConfig" }

		open var state: String? {
			return internalGetState()
		}

		func internalGetState(aliasSuffix: String? = nil) -> String? {
			return field(field: "state", aliasSuffix: aliasSuffix) as! String?
		}

		open var productType: String? {
			return internalGetProductType()
		}

		func internalGetProductType(aliasSuffix: String? = nil) -> String? {
			return field(field: "productType", aliasSuffix: aliasSuffix) as! String?
		}

		open var type: String? {
			return internalGetType()
		}

		func internalGetType(aliasSuffix: String? = nil) -> String? {
			return field(field: "type", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "state":

				return .scalar

				case "productType":

				return .scalar

				case "type":

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
