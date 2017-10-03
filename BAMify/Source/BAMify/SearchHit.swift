// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class SearchHitQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = SearchHit

		@available(*, deprecated, message:"User field moved inside SearchResultDoc")
		@discardableResult
		open func user(aliasSuffix: String? = nil, _ subfields: (MetaUserQuery) -> Void) -> SearchHitQuery {
			let subquery = MetaUserQuery()
			subfields(subquery)

			addField(field: "user", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func meta(aliasSuffix: String? = nil, _ subfields: (SearchHitMetaQuery) -> Void) -> SearchHitQuery {
			let subquery = SearchHitMetaQuery()
			subfields(subquery)

			addField(field: "meta", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func hit(aliasSuffix: String? = nil, _ subfields: (SearchResultDocQuery) -> Void) -> SearchHitQuery {
			let subquery = SearchResultDocQuery()
			subfields(subquery)

			addField(field: "hit", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class SearchHit: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = SearchHitQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "user":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchHit.self, field: fieldName, value: fieldValue)
				}
				return try UnknownMetaUser.create(fields: value)

				case "meta":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchHit.self, field: fieldName, value: fieldValue)
				}
				return try SearchHitMeta(fields: value)

				case "hit":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchHit.self, field: fieldName, value: fieldValue)
				}
				return try UnknownSearchResultDoc.create(fields: value)

				default:
				throw SchemaViolationError(type: SearchHit.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "SearchHit" }

		@available(*, deprecated, message:"User field moved inside SearchResultDoc")
		open var user: MetaUser? {
			return internalGetUser()
		}

		func internalGetUser(aliasSuffix: String? = nil) -> MetaUser? {
			return field(field: "user", aliasSuffix: aliasSuffix) as! MetaUser?
		}

		open var meta: BAMify.SearchHitMeta? {
			return internalGetMeta()
		}

		func internalGetMeta(aliasSuffix: String? = nil) -> BAMify.SearchHitMeta? {
			return field(field: "meta", aliasSuffix: aliasSuffix) as! BAMify.SearchHitMeta?
		}

		open var hit: SearchResultDoc? {
			return internalGetHit()
		}

		func internalGetHit(aliasSuffix: String? = nil) -> SearchResultDoc? {
			return field(field: "hit", aliasSuffix: aliasSuffix) as! SearchResultDoc?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "user":

				return .scalar

				case "meta":

				return .object

				case "hit":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "meta":
				return internalGetMeta()

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
			var response: [GraphQL.AbstractResponse] = []
			objectMap.keys.forEach({
				key in
				switch(key) {
					case "user":
					if let value = internalGetUser() {
						response.append(value as! GraphQL.AbstractResponse)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "meta":
					if let value = internalGetMeta() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "hit":
					if let value = internalGetHit() {
						response.append(value as! GraphQL.AbstractResponse)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					default:
					break
				}
			})
			return response
		}

		open func responseObject() -> GraphQL.AbstractResponse {
			return self as GraphQL.AbstractResponse
		}
	}
}
