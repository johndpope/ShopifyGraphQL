// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class MetaWatchlistDeleteQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = MetaWatchlistDelete

		@discardableResult
		open func errorMessages(aliasSuffix: String? = nil) -> MetaWatchlistDeleteQuery {
			addField(field: "errorMessages", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func deletionsAttempted(aliasSuffix: String? = nil) -> MetaWatchlistDeleteQuery {
			addField(field: "deletionsAttempted", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func deletionsSucceeded(aliasSuffix: String? = nil) -> MetaWatchlistDeleteQuery {
			addField(field: "deletionsSucceeded", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class MetaWatchlistDelete: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = MetaWatchlistDeleteQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "errorMessages":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: MetaWatchlistDelete.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? String else {
					throw SchemaViolationError(type: MetaWatchlistDelete.self, field: fieldName, value: fieldValue)
				}
				return value } as [Any?]

				case "deletionsAttempted":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: MetaWatchlistDelete.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "deletionsSucceeded":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: MetaWatchlistDelete.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				default:
				throw SchemaViolationError(type: MetaWatchlistDelete.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "MetaWatchlistDelete" }

		open var errorMessages: [String?]? {
			return internalGetErrorMessages()
		}

		func internalGetErrorMessages(aliasSuffix: String? = nil) -> [String?]? {
			return field(field: "errorMessages", aliasSuffix: aliasSuffix) as! [String?]?
		}

		open var deletionsAttempted: Int32? {
			return internalGetDeletionsAttempted()
		}

		func internalGetDeletionsAttempted(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "deletionsAttempted", aliasSuffix: aliasSuffix) as! Int32?
		}

		open var deletionsSucceeded: Int32? {
			return internalGetDeletionsSucceeded()
		}

		func internalGetDeletionsSucceeded(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "deletionsSucceeded", aliasSuffix: aliasSuffix) as! Int32?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "errorMessages":

				return .scalarList

				case "deletionsAttempted":

				return .scalar

				case "deletionsSucceeded":

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
