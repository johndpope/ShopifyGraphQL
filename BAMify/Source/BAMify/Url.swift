// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class UrlQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Url

		@discardableResult
		open func rel(aliasSuffix: String? = nil) -> UrlQuery {
			addField(field: "rel", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func href(aliasSuffix: String? = nil) -> UrlQuery {
			addField(field: "href", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class Url: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = UrlQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "rel":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Url.self, field: fieldName, value: fieldValue)
				}
				return value

				case "href":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Url.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: Url.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "Url" }

		open var rel: String? {
			return internalGetRel()
		}

		func internalGetRel(aliasSuffix: String? = nil) -> String? {
			return field(field: "rel", aliasSuffix: aliasSuffix) as! String?
		}

		open var href: String? {
			return internalGetHref()
		}

		func internalGetHref(aliasSuffix: String? = nil) -> String? {
			return field(field: "href", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "rel":

				return .scalar

				case "href":

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
