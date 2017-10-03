// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class MetaQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Meta

		@discardableResult
		open func autoPlay(aliasSuffix: String? = nil) -> MetaQuery {
			addField(field: "autoPlay", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func displayType(aliasSuffix: String? = nil) -> MetaQuery {
			addField(field: "displayType", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class Meta: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = MetaQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "autoPlay":
				if value is NSNull { return nil }
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Meta.self, field: fieldName, value: fieldValue)
				}
				return value

				case "displayType":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Meta.self, field: fieldName, value: fieldValue)
				}
				return DisplayType(rawValue: value) ?? .unknownValue

				default:
				throw SchemaViolationError(type: Meta.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "Meta" }

		open var autoPlay: Bool? {
			return internalGetAutoPlay()
		}

		func internalGetAutoPlay(aliasSuffix: String? = nil) -> Bool? {
			return field(field: "autoPlay", aliasSuffix: aliasSuffix) as! Bool?
		}

		open var displayType: BAMify.DisplayType? {
			return internalGetDisplayType()
		}

		func internalGetDisplayType(aliasSuffix: String? = nil) -> BAMify.DisplayType? {
			return field(field: "displayType", aliasSuffix: aliasSuffix) as! BAMify.DisplayType?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "autoPlay":

				return .scalar

				case "displayType":

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
