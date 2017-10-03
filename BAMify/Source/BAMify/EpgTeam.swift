// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class EpgTeamQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = EpgTeam

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> EpgTeamQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func type(aliasSuffix: String? = nil) -> EpgTeamQuery {
			addField(field: "type", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class EpgTeam: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = EpgTeamQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EpgTeam.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "type":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: EpgTeam.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: EpgTeam.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "EpgTeam" }

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var type: String? {
			return internalGetType()
		}

		func internalGetType(aliasSuffix: String? = nil) -> String? {
			return field(field: "type", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "id":

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
