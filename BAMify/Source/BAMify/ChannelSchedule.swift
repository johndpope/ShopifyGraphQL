// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class ChannelScheduleQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = ChannelSchedule

		@discardableResult
		open func channelId(aliasSuffix: String? = nil) -> ChannelScheduleQuery {
			addField(field: "channelId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func videoAirings(aliasSuffix: String? = nil, _ subfields: (VideoAiringPairingQuery) -> Void) -> ChannelScheduleQuery {
			let subquery = VideoAiringPairingQuery()
			subfields(subquery)

			addField(field: "videoAirings", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class ChannelSchedule: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = ChannelScheduleQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "channelId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: ChannelSchedule.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "videoAirings":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: ChannelSchedule.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: ChannelSchedule.self, field: fieldName, value: fieldValue)
				}
				return try VideoAiringPairing(fields: value) } as [Any?]

				default:
				throw SchemaViolationError(type: ChannelSchedule.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "ChannelSchedule" }

		open var channelId: GraphQL.ID? {
			return internalGetChannelId()
		}

		func internalGetChannelId(aliasSuffix: String? = nil) -> GraphQL.ID? {
			return field(field: "channelId", aliasSuffix: aliasSuffix) as! GraphQL.ID?
		}

		open var videoAirings: [BAMify.VideoAiringPairing?]? {
			return internalGetVideoAirings()
		}

		func internalGetVideoAirings(aliasSuffix: String? = nil) -> [BAMify.VideoAiringPairing?]? {
			return field(field: "videoAirings", aliasSuffix: aliasSuffix) as! [BAMify.VideoAiringPairing?]?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "channelId":

				return .scalar

				case "videoAirings":

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
				case "videoAirings":
				return internalGetVideoAirings() ?? []

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
