// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class MilestoneMarkerQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = MilestoneMarker

		@discardableResult
		open func absoluteTime(aliasSuffix: String? = nil) -> MilestoneMarkerQuery {
			addField(field: "absoluteTime", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func offsetSeconds(aliasSuffix: String? = nil) -> MilestoneMarkerQuery {
			addField(field: "offsetSeconds", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class MilestoneMarker: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = MilestoneMarkerQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "absoluteTime":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: MilestoneMarker.self, field: fieldName, value: fieldValue)
				}
				return value

				case "offsetSeconds":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: MilestoneMarker.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				default:
				throw SchemaViolationError(type: MilestoneMarker.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "MilestoneMarker" }

		open var absoluteTime: String? {
			return internalGetAbsoluteTime()
		}

		func internalGetAbsoluteTime(aliasSuffix: String? = nil) -> String? {
			return field(field: "absoluteTime", aliasSuffix: aliasSuffix) as! String?
		}

		open var offsetSeconds: Int32? {
			return internalGetOffsetSeconds()
		}

		func internalGetOffsetSeconds(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "offsetSeconds", aliasSuffix: aliasSuffix) as! Int32?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "absoluteTime":

				return .scalar

				case "offsetSeconds":

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
