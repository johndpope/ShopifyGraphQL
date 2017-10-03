// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class VideoAiringPairingQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = VideoAiringPairing

		@discardableResult
		open func video(aliasSuffix: String? = nil, _ subfields: (VideoQuery) -> Void) -> VideoAiringPairingQuery {
			let subquery = VideoQuery()
			subfields(subquery)

			addField(field: "video", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func airing(aliasSuffix: String? = nil, _ subfields: (AiringQuery) -> Void) -> VideoAiringPairingQuery {
			let subquery = AiringQuery()
			subfields(subquery)

			addField(field: "airing", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class VideoAiringPairing: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = VideoAiringPairingQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "video":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: VideoAiringPairing.self, field: fieldName, value: fieldValue)
				}
				return try Video(fields: value)

				case "airing":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: VideoAiringPairing.self, field: fieldName, value: fieldValue)
				}
				return try Airing(fields: value)

				default:
				throw SchemaViolationError(type: VideoAiringPairing.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "VideoAiringPairing" }

		open var video: BAMify.Video? {
			return internalGetVideo()
		}

		func internalGetVideo(aliasSuffix: String? = nil) -> BAMify.Video? {
			return field(field: "video", aliasSuffix: aliasSuffix) as! BAMify.Video?
		}

		open var airing: BAMify.Airing? {
			return internalGetAiring()
		}

		func internalGetAiring(aliasSuffix: String? = nil) -> BAMify.Airing? {
			return field(field: "airing", aliasSuffix: aliasSuffix) as! BAMify.Airing?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "video":

				return .object

				case "airing":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "video":
				return internalGetVideo()

				case "airing":
				return internalGetAiring()

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
					case "video":
					if let value = internalGetVideo() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "airing":
					if let value = internalGetAiring() {
						response.append(value)
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
