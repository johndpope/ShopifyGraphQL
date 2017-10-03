// Generated from graphql_swift_gen gem
import Foundation

public protocol MetaUser {
	var typeName: String { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension BAMify {
	open class MetaUserQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = MetaUser

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onMediaUser(subfields: (MediaUserQuery) -> Void) -> MetaUserQuery {
			let subquery = MediaUserQuery()
			subfields(subquery)
			addInlineFragment(on: "MediaUser", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUser(subfields: (UserQuery) -> Void) -> MetaUserQuery {
			let subquery = UserQuery()
			subfields(subquery)
			addInlineFragment(on: "User", subfields: subquery)
			return self
		}
	}

	open class UnknownMetaUser: GraphQL.AbstractResponse, GraphQLObject, MetaUser {
		public typealias Query = MetaUserQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				default:
				throw SchemaViolationError(type: UnknownMetaUser.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> MetaUser {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownMetaUser.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "MediaUser":
				return try MediaUser.init(fields: fields)

				case "User":
				return try User.init(fields: fields)

				default:
				return try UnknownMetaUser.init(fields: fields)
			}
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
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
