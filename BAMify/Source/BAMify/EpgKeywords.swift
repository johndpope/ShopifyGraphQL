// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class EpgKeywordsQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = EpgKeywords

		@discardableResult
		open func promos(aliasSuffix: String? = nil) -> EpgKeywordsQuery {
			addField(field: "promos", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class EpgKeywords: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = EpgKeywordsQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "promos":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: EpgKeywords.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? String else {
					throw SchemaViolationError(type: EpgKeywords.self, field: fieldName, value: fieldValue)
				}
				return value } as [Any?]

				default:
				throw SchemaViolationError(type: EpgKeywords.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "EpgKeywords" }

		open var promos: [String?]? {
			return internalGetPromos()
		}

		func internalGetPromos(aliasSuffix: String? = nil) -> [String?]? {
			return field(field: "promos", aliasSuffix: aliasSuffix) as! [String?]?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "promos":

				return .scalarList

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
