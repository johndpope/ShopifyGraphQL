// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class EpgChannelQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = EpgChannel

		@discardableResult
		open func callsign(aliasSuffix: String? = nil) -> EpgChannelQuery {
			addField(field: "callsign", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> EpgChannelQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func parent(aliasSuffix: String? = nil) -> EpgChannelQuery {
			addField(field: "parent", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func partnerId(aliasSuffix: String? = nil) -> EpgChannelQuery {
			addField(field: "partnerId", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class EpgChannel: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = EpgChannelQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "callsign":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: EpgChannel.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EpgChannel.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "parent":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: EpgChannel.self, field: fieldName, value: fieldValue)
				}
				return value

				case "partnerId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: EpgChannel.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: EpgChannel.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "EpgChannel" }

		open var callsign: String? {
			return internalGetCallsign()
		}

		func internalGetCallsign(aliasSuffix: String? = nil) -> String? {
			return field(field: "callsign", aliasSuffix: aliasSuffix) as! String?
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var parent: String? {
			return internalGetParent()
		}

		func internalGetParent(aliasSuffix: String? = nil) -> String? {
			return field(field: "parent", aliasSuffix: aliasSuffix) as! String?
		}

		open var partnerId: String? {
			return internalGetPartnerId()
		}

		func internalGetPartnerId(aliasSuffix: String? = nil) -> String? {
			return field(field: "partnerId", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "callsign":

				return .scalar

				case "id":

				return .scalar

				case "parent":

				return .scalar

				case "partnerId":

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
