// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class MilestoneQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Milestone

		@discardableResult
		open func photos(aliasSuffix: String? = nil, dimensions: [String]? = nil, max_width: Int32? = nil, max_height: Int32? = nil, min_width: Int32? = nil, min_height: Int32? = nil, _ subfields: (PhotoAssetQuery) -> Void) -> MilestoneQuery {
			var args: [String] = []

			if let dimensions = dimensions {
				args.append("dimensions:[\(dimensions.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")
			}

			if let max_width = max_width {
				args.append("max_width:\(max_width)")
			}

			if let max_height = max_height {
				args.append("max_height:\(max_height)")
			}

			if let min_width = min_width {
				args.append("min_width:\(min_width)")
			}

			if let min_height = min_height {
				args.append("min_height:\(min_height)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = PhotoAssetQuery()
			subfields(subquery)

			addField(field: "photos", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func blurb(aliasSuffix: String? = nil) -> MilestoneQuery {
			addField(field: "blurb", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> MilestoneQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func keywords(aliasSuffix: String? = nil, _ subfields: (KeywordQuery) -> Void) -> MilestoneQuery {
			let subquery = KeywordQuery()
			subfields(subquery)

			addField(field: "keywords", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func milestoneTime(aliasSuffix: String? = nil, _ subfields: (MilestoneTimeQuery) -> Void) -> MilestoneQuery {
			let subquery = MilestoneTimeQuery()
			subfields(subquery)

			addField(field: "milestoneTime", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func milestoneType(aliasSuffix: String? = nil) -> MilestoneQuery {
			addField(field: "milestoneType", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func title(aliasSuffix: String? = nil) -> MilestoneQuery {
			addField(field: "title", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class Milestone: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = MilestoneQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "photos":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: Milestone.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: Milestone.self, field: fieldName, value: fieldValue)
				}
				return try PhotoAsset(fields: value) } as [Any?]

				case "blurb":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Milestone.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Milestone.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "keywords":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: Milestone.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: Milestone.self, field: fieldName, value: fieldValue)
				}
				return try Keyword(fields: value) } as [Any?]

				case "milestoneTime":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: Milestone.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: Milestone.self, field: fieldName, value: fieldValue)
				}
				return try MilestoneTime(fields: value) } as [Any?]

				case "milestoneType":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Milestone.self, field: fieldName, value: fieldValue)
				}
				return value

				case "title":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Milestone.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: Milestone.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "Milestone" }

		open var photos: [BAMify.PhotoAsset?]? {
			return internalGetPhotos()
		}

		open func aliasedPhotos(aliasSuffix: String) -> [BAMify.PhotoAsset?]? {
			return internalGetPhotos(aliasSuffix: aliasSuffix)
		}

		func internalGetPhotos(aliasSuffix: String? = nil) -> [BAMify.PhotoAsset?]? {
			return field(field: "photos", aliasSuffix: aliasSuffix) as! [BAMify.PhotoAsset?]?
		}

		open var blurb: String? {
			return internalGetBlurb()
		}

		func internalGetBlurb(aliasSuffix: String? = nil) -> String? {
			return field(field: "blurb", aliasSuffix: aliasSuffix) as! String?
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var keywords: [BAMify.Keyword?]? {
			return internalGetKeywords()
		}

		func internalGetKeywords(aliasSuffix: String? = nil) -> [BAMify.Keyword?]? {
			return field(field: "keywords", aliasSuffix: aliasSuffix) as! [BAMify.Keyword?]?
		}

		open var milestoneTime: [BAMify.MilestoneTime?]? {
			return internalGetMilestoneTime()
		}

		func internalGetMilestoneTime(aliasSuffix: String? = nil) -> [BAMify.MilestoneTime?]? {
			return field(field: "milestoneTime", aliasSuffix: aliasSuffix) as! [BAMify.MilestoneTime?]?
		}

		open var milestoneType: String? {
			return internalGetMilestoneType()
		}

		func internalGetMilestoneType(aliasSuffix: String? = nil) -> String? {
			return field(field: "milestoneType", aliasSuffix: aliasSuffix) as! String?
		}

		open var title: String? {
			return internalGetTitle()
		}

		func internalGetTitle(aliasSuffix: String? = nil) -> String? {
			return field(field: "title", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "photos":

				return .objectList

				case "blurb":

				return .scalar

				case "id":

				return .scalar

				case "keywords":

				return .objectList

				case "milestoneTime":

				return .objectList

				case "milestoneType":

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
				case "photos":
				return internalGetPhotos() ?? []

				case "keywords":
				return internalGetKeywords() ?? []

				case "milestoneTime":
				return internalGetMilestoneTime() ?? []

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
