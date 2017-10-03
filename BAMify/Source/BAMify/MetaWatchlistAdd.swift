// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class MetaWatchlistAddQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = MetaWatchlistAdd

		@discardableResult
		open func errorMessages(aliasSuffix: String? = nil) -> MetaWatchlistAddQuery {
			addField(field: "errorMessages", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func additionsAttempted(aliasSuffix: String? = nil) -> MetaWatchlistAddQuery {
			addField(field: "additionsAttempted", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func additionsSucceeded(aliasSuffix: String? = nil) -> MetaWatchlistAddQuery {
			addField(field: "additionsSucceeded", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class MetaWatchlistAdd: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = MetaWatchlistAddQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "errorMessages":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: MetaWatchlistAdd.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? String else {
					throw SchemaViolationError(type: MetaWatchlistAdd.self, field: fieldName, value: fieldValue)
				}
				return value } as [Any?]

				case "additionsAttempted":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: MetaWatchlistAdd.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "additionsSucceeded":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: MetaWatchlistAdd.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				default:
				throw SchemaViolationError(type: MetaWatchlistAdd.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "MetaWatchlistAdd" }

		open var errorMessages: [String?]? {
			return internalGetErrorMessages()
		}

		func internalGetErrorMessages(aliasSuffix: String? = nil) -> [String?]? {
			return field(field: "errorMessages", aliasSuffix: aliasSuffix) as! [String?]?
		}

		open var additionsAttempted: Int32? {
			return internalGetAdditionsAttempted()
		}

		func internalGetAdditionsAttempted(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "additionsAttempted", aliasSuffix: aliasSuffix) as! Int32?
		}

		open var additionsSucceeded: Int32? {
			return internalGetAdditionsSucceeded()
		}

		func internalGetAdditionsSucceeded(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "additionsSucceeded", aliasSuffix: aliasSuffix) as! Int32?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "errorMessages":

				return .scalarList

				case "additionsAttempted":

				return .scalar

				case "additionsSucceeded":

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
