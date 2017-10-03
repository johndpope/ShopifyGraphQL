// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class UserQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = User

		@discardableResult
		open func userId(aliasSuffix: String? = nil) -> UserQuery {
			addField(field: "userId", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class User: GraphQL.AbstractResponse, GraphQLObject, MetaUser {
		public typealias Query = UserQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "userId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				default:
				throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "User" }

		open var userId: GraphQL.ID? {
			return internalGetUserId()
		}

		func internalGetUserId(aliasSuffix: String? = nil) -> GraphQL.ID? {
			return field(field: "userId", aliasSuffix: aliasSuffix) as! GraphQL.ID?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "userId":

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
