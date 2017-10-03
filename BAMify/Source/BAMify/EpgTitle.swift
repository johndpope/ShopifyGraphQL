// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class EpgTitleQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = EpgTitle

		@discardableResult
		open func descriptionLong(aliasSuffix: String? = nil) -> EpgTitleQuery {
			addField(field: "descriptionLong", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func descriptionShort(aliasSuffix: String? = nil) -> EpgTitleQuery {
			addField(field: "descriptionShort", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func episodeName(aliasSuffix: String? = nil) -> EpgTitleQuery {
			addField(field: "episodeName", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func language(aliasSuffix: String? = nil) -> EpgTitleQuery {
			addField(field: "language", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func title(aliasSuffix: String? = nil) -> EpgTitleQuery {
			addField(field: "title", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class EpgTitle: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = EpgTitleQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "descriptionLong":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: EpgTitle.self, field: fieldName, value: fieldValue)
				}
				return value

				case "descriptionShort":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: EpgTitle.self, field: fieldName, value: fieldValue)
				}
				return value

				case "episodeName":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: EpgTitle.self, field: fieldName, value: fieldValue)
				}
				return value

				case "language":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: EpgTitle.self, field: fieldName, value: fieldValue)
				}
				return value

				case "title":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: EpgTitle.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: EpgTitle.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "EpgTitle" }

		open var descriptionLong: String? {
			return internalGetDescriptionLong()
		}

		func internalGetDescriptionLong(aliasSuffix: String? = nil) -> String? {
			return field(field: "descriptionLong", aliasSuffix: aliasSuffix) as! String?
		}

		open var descriptionShort: String? {
			return internalGetDescriptionShort()
		}

		func internalGetDescriptionShort(aliasSuffix: String? = nil) -> String? {
			return field(field: "descriptionShort", aliasSuffix: aliasSuffix) as! String?
		}

		open var episodeName: String? {
			return internalGetEpisodeName()
		}

		func internalGetEpisodeName(aliasSuffix: String? = nil) -> String? {
			return field(field: "episodeName", aliasSuffix: aliasSuffix) as! String?
		}

		open var language: String? {
			return internalGetLanguage()
		}

		func internalGetLanguage(aliasSuffix: String? = nil) -> String? {
			return field(field: "language", aliasSuffix: aliasSuffix) as! String?
		}

		open var title: String? {
			return internalGetTitle()
		}

		func internalGetTitle(aliasSuffix: String? = nil) -> String? {
			return field(field: "title", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "descriptionLong":

				return .scalar

				case "descriptionShort":

				return .scalar

				case "episodeName":

				return .scalar

				case "language":

				return .scalar

				case "title":

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
