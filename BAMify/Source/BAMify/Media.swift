// Generated from graphql_swift_gen gem
import Foundation

public protocol Media {
	var typeName: String { get }

	var contentId: GraphQL.ID { get }

	var displayRunTime: String? { get }

	var genres: [String?]? { get }

	var programId: GraphQL.ID? { get }

	var runTime: String? { get }

	var type: String { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension BAMify {
	open class MediaQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Media

		@discardableResult
		open func contentId(aliasSuffix: String? = nil) -> MediaQuery {
			addField(field: "contentId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func displayRunTime(aliasSuffix: String? = nil) -> MediaQuery {
			addField(field: "displayRunTime", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func genres(aliasSuffix: String? = nil) -> MediaQuery {
			addField(field: "genres", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func programId(aliasSuffix: String? = nil) -> MediaQuery {
			addField(field: "programId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func runTime(aliasSuffix: String? = nil) -> MediaQuery {
			addField(field: "runTime", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func type(aliasSuffix: String? = nil) -> MediaQuery {
			addField(field: "type", aliasSuffix: aliasSuffix)
			return self
		}

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onAiring(subfields: (AiringQuery) -> Void) -> MediaQuery {
			let subquery = AiringQuery()
			subfields(subquery)
			addInlineFragment(on: "Airing", subfields: subquery)
			return self
		}

		@discardableResult
		open func onVideo(subfields: (VideoQuery) -> Void) -> MediaQuery {
			let subquery = VideoQuery()
			subfields(subquery)
			addInlineFragment(on: "Video", subfields: subquery)
			return self
		}
	}

	open class UnknownMedia: GraphQL.AbstractResponse, GraphQLObject, Media {
		public typealias Query = MediaQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "contentId":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownMedia.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "displayRunTime":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownMedia.self, field: fieldName, value: fieldValue)
				}
				return value

				case "genres":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: UnknownMedia.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? String else {
					throw SchemaViolationError(type: UnknownMedia.self, field: fieldName, value: fieldValue)
				}
				return value } as [Any?]

				case "programId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownMedia.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "runTime":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownMedia.self, field: fieldName, value: fieldValue)
				}
				return value

				case "type":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownMedia.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: UnknownMedia.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> Media {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownMedia.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "Airing":
				return try Airing.init(fields: fields)

				case "Video":
				return try Video.init(fields: fields)

				default:
				return try UnknownMedia.init(fields: fields)
			}
		}

		open var contentId: GraphQL.ID {
			return internalGetContentId()
		}

		func internalGetContentId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "contentId", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var displayRunTime: String? {
			return internalGetDisplayRunTime()
		}

		func internalGetDisplayRunTime(aliasSuffix: String? = nil) -> String? {
			return field(field: "displayRunTime", aliasSuffix: aliasSuffix) as! String?
		}

		open var genres: [String?]? {
			return internalGetGenres()
		}

		func internalGetGenres(aliasSuffix: String? = nil) -> [String?]? {
			return field(field: "genres", aliasSuffix: aliasSuffix) as! [String?]?
		}

		open var programId: GraphQL.ID? {
			return internalGetProgramId()
		}

		func internalGetProgramId(aliasSuffix: String? = nil) -> GraphQL.ID? {
			return field(field: "programId", aliasSuffix: aliasSuffix) as! GraphQL.ID?
		}

		open var runTime: String? {
			return internalGetRunTime()
		}

		func internalGetRunTime(aliasSuffix: String? = nil) -> String? {
			return field(field: "runTime", aliasSuffix: aliasSuffix) as! String?
		}

		open var type: String {
			return internalGetType()
		}

		func internalGetType(aliasSuffix: String? = nil) -> String {
			return field(field: "type", aliasSuffix: aliasSuffix) as! String
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "contentId":

				return .scalar

				case "displayRunTime":

				return .scalar

				case "genres":

				return .scalarList

				case "programId":

				return .scalar

				case "runTime":

				return .scalar

				case "type":

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
