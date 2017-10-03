// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class SlateQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Slate

		@discardableResult
		open func title(aliasSuffix: String? = nil) -> SlateQuery {
			addField(field: "title", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func urls(aliasSuffix: String? = nil, _ subfields: (UrlQuery) -> Void) -> SlateQuery {
			let subquery = UrlQuery()
			subfields(subquery)

			addField(field: "urls", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class Slate: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = SlateQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "title":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Slate.self, field: fieldName, value: fieldValue)
				}
				return value

				case "urls":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: Slate.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: Slate.self, field: fieldName, value: fieldValue)
				}
				return try Url(fields: value) } as [Any?]

				default:
				throw SchemaViolationError(type: Slate.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "Slate" }

		open var title: String? {
			return internalGetTitle()
		}

		func internalGetTitle(aliasSuffix: String? = nil) -> String? {
			return field(field: "title", aliasSuffix: aliasSuffix) as! String?
		}

		open var urls: [BAMify.Url?]? {
			return internalGetUrls()
		}

		func internalGetUrls(aliasSuffix: String? = nil) -> [BAMify.Url?]? {
			return field(field: "urls", aliasSuffix: aliasSuffix) as! [BAMify.Url?]?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "title":

				return .scalar

				case "urls":

				return .objectList

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
				case "urls":
				return internalGetUrls() ?? []

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
