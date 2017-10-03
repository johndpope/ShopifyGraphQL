// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class MilestoneTimeQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = MilestoneTime

		@discardableResult
		open func type(aliasSuffix: String? = nil) -> MilestoneTimeQuery {
			addField(field: "type", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func startDatetime(aliasSuffix: String? = nil) -> MilestoneTimeQuery {
			addField(field: "startDatetime", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func start(aliasSuffix: String? = nil) -> MilestoneTimeQuery {
			addField(field: "start", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class MilestoneTime: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = MilestoneTimeQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "type":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: MilestoneTime.self, field: fieldName, value: fieldValue)
				}
				return value

				case "startDatetime":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: MilestoneTime.self, field: fieldName, value: fieldValue)
				}
				return value

				case "start":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: MilestoneTime.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				default:
				throw SchemaViolationError(type: MilestoneTime.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "MilestoneTime" }

		open var type: String? {
			return internalGetType()
		}

		func internalGetType(aliasSuffix: String? = nil) -> String? {
			return field(field: "type", aliasSuffix: aliasSuffix) as! String?
		}

		open var startDatetime: String? {
			return internalGetStartDatetime()
		}

		func internalGetStartDatetime(aliasSuffix: String? = nil) -> String? {
			return field(field: "startDatetime", aliasSuffix: aliasSuffix) as! String?
		}

		open var start: Int32? {
			return internalGetStart()
		}

		func internalGetStart(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "start", aliasSuffix: aliasSuffix) as! Int32?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "type":

				return .scalar

				case "startDatetime":

				return .scalar

				case "start":

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
