// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class HypermediaLinkQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = HypermediaLink

		@discardableResult
		open func href(aliasSuffix: String? = nil) -> HypermediaLinkQuery {
			addField(field: "href", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func params(aliasSuffix: String? = nil, _ subfields: (ParamQuery) -> Void) -> HypermediaLinkQuery {
			let subquery = ParamQuery()
			subfields(subquery)

			addField(field: "params", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func rel(aliasSuffix: String? = nil) -> HypermediaLinkQuery {
			addField(field: "rel", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func templated(aliasSuffix: String? = nil) -> HypermediaLinkQuery {
			addField(field: "templated", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class HypermediaLink: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = HypermediaLinkQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "href":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: HypermediaLink.self, field: fieldName, value: fieldValue)
				}
				return value

				case "params":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: HypermediaLink.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: HypermediaLink.self, field: fieldName, value: fieldValue)
				}
				return try Param(fields: value) } as [Any?]

				case "rel":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: HypermediaLink.self, field: fieldName, value: fieldValue)
				}
				return value

				case "templated":
				if value is NSNull { return nil }
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: HypermediaLink.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: HypermediaLink.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "HypermediaLink" }

		open var href: String? {
			return internalGetHref()
		}

		func internalGetHref(aliasSuffix: String? = nil) -> String? {
			return field(field: "href", aliasSuffix: aliasSuffix) as! String?
		}

		open var params: [BAMify.Param?]? {
			return internalGetParams()
		}

		func internalGetParams(aliasSuffix: String? = nil) -> [BAMify.Param?]? {
			return field(field: "params", aliasSuffix: aliasSuffix) as! [BAMify.Param?]?
		}

		open var rel: String? {
			return internalGetRel()
		}

		func internalGetRel(aliasSuffix: String? = nil) -> String? {
			return field(field: "rel", aliasSuffix: aliasSuffix) as! String?
		}

		open var templated: Bool? {
			return internalGetTemplated()
		}

		func internalGetTemplated(aliasSuffix: String? = nil) -> Bool? {
			return field(field: "templated", aliasSuffix: aliasSuffix) as! Bool?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "href":

				return .scalar

				case "params":

				return .objectList

				case "rel":

				return .scalar

				case "templated":

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
				case "params":
				return internalGetParams() ?? []

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
