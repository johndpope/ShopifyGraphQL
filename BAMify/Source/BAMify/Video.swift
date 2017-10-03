// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class VideoQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Video

		@discardableResult
		open func contentId(aliasSuffix: String? = nil) -> VideoQuery {
			addField(field: "contentId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func type(aliasSuffix: String? = nil) -> VideoQuery {
			addField(field: "type", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func tags(aliasSuffix: String? = nil, type: [String]? = nil, _ subfields: (TagQuery) -> Void) -> VideoQuery {
			var args: [String] = []

			if let type = type {
				args.append("type:[\(type.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = TagQuery()
			subfields(subquery)

			addField(field: "tags", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func displayRunTime(aliasSuffix: String? = nil) -> VideoQuery {
			addField(field: "displayRunTime", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func genres(aliasSuffix: String? = nil) -> VideoQuery {
			addField(field: "genres", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func programId(aliasSuffix: String? = nil) -> VideoQuery {
			addField(field: "programId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func runTime(aliasSuffix: String? = nil) -> VideoQuery {
			addField(field: "runTime", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func user(aliasSuffix: String? = nil, _ subfields: (WatchlistBookmarksUserQuery) -> Void) -> VideoQuery {
			let subquery = WatchlistBookmarksUserQuery()
			subfields(subquery)

			addField(field: "user", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func photos(aliasSuffix: String? = nil, dimensions: [String]? = nil, max_width: Int32? = nil, max_height: Int32? = nil, min_width: Int32? = nil, min_height: Int32? = nil, _ subfields: (PhotoAssetQuery) -> Void) -> VideoQuery {
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
		open func actorsDisplay(aliasSuffix: String? = nil) -> VideoQuery {
			addField(field: "actorsDisplay", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func appears(aliasSuffix: String? = nil) -> VideoQuery {
			addField(field: "appears", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func assetName(aliasSuffix: String? = nil) -> VideoQuery {
			addField(field: "assetName", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func billingId(aliasSuffix: String? = nil) -> VideoQuery {
			addField(field: "billingID", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func calendarEventId(aliasSuffix: String? = nil) -> VideoQuery {
			addField(field: "calendarEventId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func closedCaptioning(aliasSuffix: String? = nil) -> VideoQuery {
			addField(field: "closedCaptioning", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func creationDate(aliasSuffix: String? = nil) -> VideoQuery {
			addField(field: "creationDate", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func description(aliasSuffix: String? = nil) -> VideoQuery {
			addField(field: "description", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func displayAsLastChance(aliasSuffix: String? = nil) -> VideoQuery {
			addField(field: "displayAsLastChance", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func displayAsNew(aliasSuffix: String? = nil) -> VideoQuery {
			addField(field: "displayAsNew", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"Renamed to partnerProgramId")
		@discardableResult
		open func epgPartnerProgramId(aliasSuffix: String? = nil) -> VideoQuery {
			addField(field: "epgPartnerProgramId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func partnerProgramId(aliasSuffix: String? = nil) -> VideoQuery {
			addField(field: "partnerProgramId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func episodeId(aliasSuffix: String? = nil) -> VideoQuery {
			addField(field: "episodeId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func episodeName(aliasSuffix: String? = nil) -> VideoQuery {
			addField(field: "episodeName", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func episodeSequenceNumber(aliasSuffix: String? = nil) -> VideoQuery {
			addField(field: "episodeSequenceNumber", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func expires(aliasSuffix: String? = nil) -> VideoQuery {
			addField(field: "expires", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func keywords(aliasSuffix: String? = nil) -> VideoQuery {
			addField(field: "keywords", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"To be removed from schema")
		@discardableResult
		open func keywordsMediaRights(aliasSuffix: String? = nil) -> VideoQuery {
			addField(field: "keywordsMediaRights", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func language(aliasSuffix: String? = nil) -> VideoQuery {
			addField(field: "language", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func media(aliasSuffix: String? = nil, _ subfields: (MediaAssetQuery) -> Void) -> VideoQuery {
			let subquery = MediaAssetQuery()
			subfields(subquery)

			addField(field: "media", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func milestoneStart(aliasSuffix: String? = nil, _ subfields: (MilestoneMarkerQuery) -> Void) -> VideoQuery {
			let subquery = MilestoneMarkerQuery()
			subfields(subquery)

			addField(field: "milestoneStart", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func milestoneEnd(aliasSuffix: String? = nil, _ subfields: (MilestoneMarkerQuery) -> Void) -> VideoQuery {
			let subquery = MilestoneMarkerQuery()
			subfields(subquery)

			addField(field: "milestoneEnd", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func product(aliasSuffix: String? = nil) -> VideoQuery {
			addField(field: "product", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func provider(aliasSuffix: String? = nil) -> VideoQuery {
			addField(field: "provider", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func providerId(aliasSuffix: String? = nil) -> VideoQuery {
			addField(field: "providerID", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func providerQacontact(aliasSuffix: String? = nil) -> VideoQuery {
			addField(field: "providerQAContact", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func ratings(aliasSuffix: String? = nil, _ subfields: (RatingQuery) -> Void) -> VideoQuery {
			let subquery = RatingQuery()
			subfields(subquery)

			addField(field: "ratings", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func releaseDate(aliasSuffix: String? = nil) -> VideoQuery {
			addField(field: "releaseDate", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func seasonFinale(aliasSuffix: String? = nil) -> VideoQuery {
			addField(field: "seasonFinale", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func seasonId(aliasSuffix: String? = nil) -> VideoQuery {
			addField(field: "seasonId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func seriesId(aliasSuffix: String? = nil) -> VideoQuery {
			addField(field: "seriesId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func seasonPremiere(aliasSuffix: String? = nil) -> VideoQuery {
			addField(field: "seasonPremiere", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func slates(aliasSuffix: String? = nil, _ subfields: (SlateQuery) -> Void) -> VideoQuery {
			let subquery = SlateQuery()
			subfields(subquery)

			addField(field: "slates", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func studio(aliasSuffix: String? = nil) -> VideoQuery {
			addField(field: "studio", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func studioCode(aliasSuffix: String? = nil) -> VideoQuery {
			addField(field: "studioCode", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func studioName(aliasSuffix: String? = nil) -> VideoQuery {
			addField(field: "studioName", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func titles(aliasSuffix: String? = nil, _ subfields: (TitleAssetQuery) -> Void) -> VideoQuery {
			let subquery = TitleAssetQuery()
			subfields(subquery)

			addField(field: "titles", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func writerDisplay(aliasSuffix: String? = nil) -> VideoQuery {
			addField(field: "writerDisplay", aliasSuffix: aliasSuffix)
			return self
		}

//        @available(*, deprecated, message:"Use seriesSlug instead")
//        @discardableResult
//        open func seriesSlug(aliasSuffix: String? = nil) -> VideoQuery {
//            addField(field: "series_slug", aliasSuffix: aliasSuffix)
//            return self
//        }
//
//        @available(*, deprecated, message:"Use seasonSlug instead")
//        @discardableResult
//        open func seasonSlug(aliasSuffix: String? = nil) -> VideoQuery {
//            addField(field: "season_slug", aliasSuffix: aliasSuffix)
//            return self
//        }

		@discardableResult
		open func seriesSlug(aliasSuffix: String? = nil) -> VideoQuery {
			addField(field: "seriesSlug", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func seasonSlug(aliasSuffix: String? = nil) -> VideoQuery {
			addField(field: "seasonSlug", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class Video: GraphQL.AbstractResponse, GraphQLObject, CmsItem, ContentOrContents, Media, SearchResultDoc, VideoAiring, Watchable, WatchlistBookmarksPersonalizedHit {
		public typealias Query = VideoQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "contentId":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "type":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return value

				case "tags":
				if value is NSNull { return nil }
				guard let value = value as? [[String: Any]] else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return try value.map { return try Tag(fields: $0) }

				case "displayRunTime":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return value

				case "genres":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? String else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return value } as [Any?]

				case "programId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "runTime":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return value

				case "user":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return try WatchlistBookmarksUser(fields: value)

				case "photos":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return try PhotoAsset(fields: value) } as [Any?]

				case "actorsDisplay":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return value

				case "appears":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return value

				case "assetName":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return value

				case "billingID":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return value

				case "calendarEventId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return value

				case "closedCaptioning":
				if value is NSNull { return nil }
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return value

				case "creationDate":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return value

				case "description":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return value

				case "displayAsLastChance":
				if value is NSNull { return nil }
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return value

				case "displayAsNew":
				if value is NSNull { return nil }
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return value

				case "epgPartnerProgramId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "partnerProgramId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "episodeId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return value

				case "episodeName":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return value

				case "episodeSequenceNumber":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "expires":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return value

				case "keywords":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? String else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return value } as [Any?]

				case "keywordsMediaRights":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return value

				case "language":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return value

				case "media":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return try MediaAsset(fields: value) } as [Any?]

				case "milestoneStart":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return try MilestoneMarker(fields: value)

				case "milestoneEnd":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return try MilestoneMarker(fields: value)

				case "product":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return value

				case "provider":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return value

				case "providerID":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return value

				case "providerQAContact":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return value

				case "ratings":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return try Rating(fields: value) } as [Any?]

				case "releaseDate":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return value

				case "seasonFinale":
				if value is NSNull { return nil }
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return value

				case "seasonId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return value

				case "seriesId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return value

				case "seasonPremiere":
				if value is NSNull { return nil }
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return value

				case "slates":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return try Slate(fields: value) } as [Any?]

				case "studio":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return value

				case "studioCode":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return value

				case "studioName":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return value

				case "titles":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return try TitleAsset(fields: value) } as [Any?]

				case "writerDisplay":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return value

				case "series_slug":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return value

				case "season_slug":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return value

				case "seriesSlug":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return value

				case "seasonSlug":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: Video.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "Video" }

		open var contentId: GraphQL.ID {
			return internalGetContentId()
		}

		func internalGetContentId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "contentId", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var type: String {
			return internalGetType()
		}

		func internalGetType(aliasSuffix: String? = nil) -> String {
			return field(field: "type", aliasSuffix: aliasSuffix) as! String
		}

		open var tags: [BAMify.Tag]? {
			return internalGetTags()
		}

		open func aliasedTags(aliasSuffix: String) -> [BAMify.Tag]? {
			return internalGetTags(aliasSuffix: aliasSuffix)
		}

		func internalGetTags(aliasSuffix: String? = nil) -> [BAMify.Tag]? {
			return field(field: "tags", aliasSuffix: aliasSuffix) as! [BAMify.Tag]?
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

		open var user: BAMify.WatchlistBookmarksUser? {
			return internalGetUser()
		}

		func internalGetUser(aliasSuffix: String? = nil) -> BAMify.WatchlistBookmarksUser? {
			return field(field: "user", aliasSuffix: aliasSuffix) as! BAMify.WatchlistBookmarksUser?
		}

		open var photos: [BAMify.PhotoAsset?]? {
			return internalGetPhotos()
		}

		open func aliasedPhotos(aliasSuffix: String) -> [BAMify.PhotoAsset?]? {
			return internalGetPhotos(aliasSuffix: aliasSuffix)
		}

		func internalGetPhotos(aliasSuffix: String? = nil) -> [BAMify.PhotoAsset?]? {
			return field(field: "photos", aliasSuffix: aliasSuffix) as! [BAMify.PhotoAsset?]?
		}

		open var actorsDisplay: String? {
			return internalGetActorsDisplay()
		}

		func internalGetActorsDisplay(aliasSuffix: String? = nil) -> String? {
			return field(field: "actorsDisplay", aliasSuffix: aliasSuffix) as! String?
		}

		open var appears: String? {
			return internalGetAppears()
		}

		func internalGetAppears(aliasSuffix: String? = nil) -> String? {
			return field(field: "appears", aliasSuffix: aliasSuffix) as! String?
		}

		open var assetName: String? {
			return internalGetAssetName()
		}

		func internalGetAssetName(aliasSuffix: String? = nil) -> String? {
			return field(field: "assetName", aliasSuffix: aliasSuffix) as! String?
		}

		open var billingId: String? {
			return internalGetBillingId()
		}

		func internalGetBillingId(aliasSuffix: String? = nil) -> String? {
			return field(field: "billingID", aliasSuffix: aliasSuffix) as! String?
		}

		open var calendarEventId: String? {
			return internalGetCalendarEventId()
		}

		func internalGetCalendarEventId(aliasSuffix: String? = nil) -> String? {
			return field(field: "calendarEventId", aliasSuffix: aliasSuffix) as! String?
		}

		open var closedCaptioning: Bool? {
			return internalGetClosedCaptioning()
		}

		func internalGetClosedCaptioning(aliasSuffix: String? = nil) -> Bool? {
			return field(field: "closedCaptioning", aliasSuffix: aliasSuffix) as! Bool?
		}

		open var creationDate: String? {
			return internalGetCreationDate()
		}

		func internalGetCreationDate(aliasSuffix: String? = nil) -> String? {
			return field(field: "creationDate", aliasSuffix: aliasSuffix) as! String?
		}

		open var description: String? {
			return internalGetDescription()
		}

		func internalGetDescription(aliasSuffix: String? = nil) -> String? {
			return field(field: "description", aliasSuffix: aliasSuffix) as! String?
		}

		open var displayAsLastChance: Bool? {
			return internalGetDisplayAsLastChance()
		}

		func internalGetDisplayAsLastChance(aliasSuffix: String? = nil) -> Bool? {
			return field(field: "displayAsLastChance", aliasSuffix: aliasSuffix) as! Bool?
		}

		open var displayAsNew: Bool? {
			return internalGetDisplayAsNew()
		}

		func internalGetDisplayAsNew(aliasSuffix: String? = nil) -> Bool? {
			return field(field: "displayAsNew", aliasSuffix: aliasSuffix) as! Bool?
		}

		@available(*, deprecated, message:"Renamed to partnerProgramId")
		open var epgPartnerProgramId: GraphQL.ID? {
			return internalGetEpgPartnerProgramId()
		}

		func internalGetEpgPartnerProgramId(aliasSuffix: String? = nil) -> GraphQL.ID? {
			return field(field: "epgPartnerProgramId", aliasSuffix: aliasSuffix) as! GraphQL.ID?
		}

		open var partnerProgramId: GraphQL.ID? {
			return internalGetPartnerProgramId()
		}

		func internalGetPartnerProgramId(aliasSuffix: String? = nil) -> GraphQL.ID? {
			return field(field: "partnerProgramId", aliasSuffix: aliasSuffix) as! GraphQL.ID?
		}

		open var episodeId: String? {
			return internalGetEpisodeId()
		}

		func internalGetEpisodeId(aliasSuffix: String? = nil) -> String? {
			return field(field: "episodeId", aliasSuffix: aliasSuffix) as! String?
		}

		open var episodeName: String? {
			return internalGetEpisodeName()
		}

		func internalGetEpisodeName(aliasSuffix: String? = nil) -> String? {
			return field(field: "episodeName", aliasSuffix: aliasSuffix) as! String?
		}

		open var episodeSequenceNumber: Int32? {
			return internalGetEpisodeSequenceNumber()
		}

		func internalGetEpisodeSequenceNumber(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "episodeSequenceNumber", aliasSuffix: aliasSuffix) as! Int32?
		}

		open var expires: String? {
			return internalGetExpires()
		}

		func internalGetExpires(aliasSuffix: String? = nil) -> String? {
			return field(field: "expires", aliasSuffix: aliasSuffix) as! String?
		}

		open var keywords: [String?]? {
			return internalGetKeywords()
		}

		func internalGetKeywords(aliasSuffix: String? = nil) -> [String?]? {
			return field(field: "keywords", aliasSuffix: aliasSuffix) as! [String?]?
		}

		@available(*, deprecated, message:"To be removed from schema")
		open var keywordsMediaRights: String? {
			return internalGetKeywordsMediaRights()
		}

		func internalGetKeywordsMediaRights(aliasSuffix: String? = nil) -> String? {
			return field(field: "keywordsMediaRights", aliasSuffix: aliasSuffix) as! String?
		}

		open var language: String? {
			return internalGetLanguage()
		}

		func internalGetLanguage(aliasSuffix: String? = nil) -> String? {
			return field(field: "language", aliasSuffix: aliasSuffix) as! String?
		}

		open var media: [BAMify.MediaAsset?]? {
			return internalGetMedia()
		}

		func internalGetMedia(aliasSuffix: String? = nil) -> [BAMify.MediaAsset?]? {
			return field(field: "media", aliasSuffix: aliasSuffix) as! [BAMify.MediaAsset?]?
		}

		open var milestoneStart: BAMify.MilestoneMarker? {
			return internalGetMilestoneStart()
		}

		func internalGetMilestoneStart(aliasSuffix: String? = nil) -> BAMify.MilestoneMarker? {
			return field(field: "milestoneStart", aliasSuffix: aliasSuffix) as! BAMify.MilestoneMarker?
		}

		open var milestoneEnd: BAMify.MilestoneMarker? {
			return internalGetMilestoneEnd()
		}

		func internalGetMilestoneEnd(aliasSuffix: String? = nil) -> BAMify.MilestoneMarker? {
			return field(field: "milestoneEnd", aliasSuffix: aliasSuffix) as! BAMify.MilestoneMarker?
		}

		open var product: String? {
			return internalGetProduct()
		}

		func internalGetProduct(aliasSuffix: String? = nil) -> String? {
			return field(field: "product", aliasSuffix: aliasSuffix) as! String?
		}

		open var provider: String? {
			return internalGetProvider()
		}

		func internalGetProvider(aliasSuffix: String? = nil) -> String? {
			return field(field: "provider", aliasSuffix: aliasSuffix) as! String?
		}

		open var providerId: String? {
			return internalGetProviderId()
		}

		func internalGetProviderId(aliasSuffix: String? = nil) -> String? {
			return field(field: "providerID", aliasSuffix: aliasSuffix) as! String?
		}

		open var providerQacontact: String? {
			return internalGetProviderQacontact()
		}

		func internalGetProviderQacontact(aliasSuffix: String? = nil) -> String? {
			return field(field: "providerQAContact", aliasSuffix: aliasSuffix) as! String?
		}

		open var ratings: [BAMify.Rating?]? {
			return internalGetRatings()
		}

		func internalGetRatings(aliasSuffix: String? = nil) -> [BAMify.Rating?]? {
			return field(field: "ratings", aliasSuffix: aliasSuffix) as! [BAMify.Rating?]?
		}

		open var releaseDate: String? {
			return internalGetReleaseDate()
		}

		func internalGetReleaseDate(aliasSuffix: String? = nil) -> String? {
			return field(field: "releaseDate", aliasSuffix: aliasSuffix) as! String?
		}

		open var seasonFinale: Bool? {
			return internalGetSeasonFinale()
		}

		func internalGetSeasonFinale(aliasSuffix: String? = nil) -> Bool? {
			return field(field: "seasonFinale", aliasSuffix: aliasSuffix) as! Bool?
		}

		open var seasonId: String? {
			return internalGetSeasonId()
		}

		func internalGetSeasonId(aliasSuffix: String? = nil) -> String? {
			return field(field: "seasonId", aliasSuffix: aliasSuffix) as! String?
		}

		open var seriesId: String? {
			return internalGetSeriesId()
		}

		func internalGetSeriesId(aliasSuffix: String? = nil) -> String? {
			return field(field: "seriesId", aliasSuffix: aliasSuffix) as! String?
		}

		open var seasonPremiere: Bool? {
			return internalGetSeasonPremiere()
		}

		func internalGetSeasonPremiere(aliasSuffix: String? = nil) -> Bool? {
			return field(field: "seasonPremiere", aliasSuffix: aliasSuffix) as! Bool?
		}

		open var slates: [BAMify.Slate?]? {
			return internalGetSlates()
		}

		func internalGetSlates(aliasSuffix: String? = nil) -> [BAMify.Slate?]? {
			return field(field: "slates", aliasSuffix: aliasSuffix) as! [BAMify.Slate?]?
		}

		open var studio: String? {
			return internalGetStudio()
		}

		func internalGetStudio(aliasSuffix: String? = nil) -> String? {
			return field(field: "studio", aliasSuffix: aliasSuffix) as! String?
		}

		open var studioCode: String? {
			return internalGetStudioCode()
		}

		func internalGetStudioCode(aliasSuffix: String? = nil) -> String? {
			return field(field: "studioCode", aliasSuffix: aliasSuffix) as! String?
		}

		open var studioName: String? {
			return internalGetStudioName()
		}

		func internalGetStudioName(aliasSuffix: String? = nil) -> String? {
			return field(field: "studioName", aliasSuffix: aliasSuffix) as! String?
		}

		open var titles: [BAMify.TitleAsset?]? {
			return internalGetTitles()
		}

		func internalGetTitles(aliasSuffix: String? = nil) -> [BAMify.TitleAsset?]? {
			return field(field: "titles", aliasSuffix: aliasSuffix) as! [BAMify.TitleAsset?]?
		}

		open var writerDisplay: String? {
			return internalGetWriterDisplay()
		}

		func internalGetWriterDisplay(aliasSuffix: String? = nil) -> String? {
			return field(field: "writerDisplay", aliasSuffix: aliasSuffix) as! String?
		}

		@available(*, deprecated, message:"Use seriesSlug instead")
		open var seriesSlug: String? {
			return internalGetSeriesSlug()
		}

		func internalGetSeriesSlug(aliasSuffix: String? = nil) -> String? {
			return field(field: "series_slug", aliasSuffix: aliasSuffix) as! String?
		}

		@available(*, deprecated, message:"Use seasonSlug instead")
		open var seasonSlug: String? {
			return internalGetSeasonSlug()
		}

		func internalGetSeasonSlug(aliasSuffix: String? = nil) -> String? {
			return field(field: "season_slug", aliasSuffix: aliasSuffix) as! String?
		}


		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "contentId":

				return .scalar

				case "type":

				return .scalar

				case "tags":

				return .objectList

				case "displayRunTime":

				return .scalar

				case "genres":

				return .scalarList

				case "programId":

				return .scalar

				case "runTime":

				return .scalar

				case "user":

				return .object

				case "photos":

				return .objectList

				case "actorsDisplay":

				return .scalar

				case "appears":

				return .scalar

				case "assetName":

				return .scalar

				case "billingID":

				return .scalar

				case "calendarEventId":

				return .scalar

				case "closedCaptioning":

				return .scalar

				case "creationDate":

				return .scalar

				case "description":

				return .scalar

				case "displayAsLastChance":

				return .scalar

				case "displayAsNew":

				return .scalar

				case "epgPartnerProgramId":

				return .scalar

				case "partnerProgramId":

				return .scalar

				case "episodeId":

				return .scalar

				case "episodeName":

				return .scalar

				case "episodeSequenceNumber":

				return .scalar

				case "expires":

				return .scalar

				case "keywords":

				return .scalarList

				case "keywordsMediaRights":

				return .scalar

				case "language":

				return .scalar

				case "media":

				return .objectList

				case "milestoneStart":

				return .object

				case "milestoneEnd":

				return .object

				case "product":

				return .scalar

				case "provider":

				return .scalar

				case "providerID":

				return .scalar

				case "providerQAContact":

				return .scalar

				case "ratings":

				return .objectList

				case "releaseDate":

				return .scalar

				case "seasonFinale":

				return .scalar

				case "seasonId":

				return .scalar

				case "seriesId":

				return .scalar

				case "seasonPremiere":

				return .scalar

				case "slates":

				return .objectList

				case "studio":

				return .scalar

				case "studioCode":

				return .scalar

				case "studioName":

				return .scalar

				case "titles":

				return .objectList

				case "writerDisplay":

				return .scalar

				case "series_slug":

				return .scalar

				case "season_slug":

				return .scalar

				case "seriesSlug":

				return .scalar

				case "seasonSlug":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "user":
				return internalGetUser()

				case "milestoneStart":
				return internalGetMilestoneStart()

				case "milestoneEnd":
				return internalGetMilestoneEnd()

				default:
				break
			}
			return nil
		}

		override open func fetchChildObjectList(key: String) -> [GraphQL.AbstractResponse] {
			switch(key) {
				case "tags":
				return internalGetTags() ?? []

				case "photos":
				return internalGetPhotos() ?? []

				case "media":
				return internalGetMedia() ?? []

				case "ratings":
				return internalGetRatings() ?? []

				case "slates":
				return internalGetSlates() ?? []

				case "titles":
				return internalGetTitles() ?? []

				default:
				return []
			}
		}

		open func childResponseObjectMap() -> [GraphQL.AbstractResponse]  {
			var response: [GraphQL.AbstractResponse] = []
			objectMap.keys.forEach({
				key in
				switch(key) {
					case "tags":
					if let value = internalGetTags() {
						value.forEach {
							response.append($0)
							response.append(contentsOf: $0.childResponseObjectMap())
						}
					}

					case "user":
					if let value = internalGetUser() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "photos":
					if let value = internalGetPhotos() {
						value.forEach {
							if let value = $0 {
								response.append(value)
								response.append(contentsOf: value.childResponseObjectMap())
							}
						}
					}

					case "media":
					if let value = internalGetMedia() {
						value.forEach {
							if let value = $0 {
								response.append(value)
								response.append(contentsOf: value.childResponseObjectMap())
							}
						}
					}

					case "milestoneStart":
					if let value = internalGetMilestoneStart() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "milestoneEnd":
					if let value = internalGetMilestoneEnd() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "ratings":
					if let value = internalGetRatings() {
						value.forEach {
							if let value = $0 {
								response.append(value)
								response.append(contentsOf: value.childResponseObjectMap())
							}
						}
					}

					case "slates":
					if let value = internalGetSlates() {
						value.forEach {
							if let value = $0 {
								response.append(value)
								response.append(contentsOf: value.childResponseObjectMap())
							}
						}
					}

					case "titles":
					if let value = internalGetTitles() {
						value.forEach {
							if let value = $0 {
								response.append(value)
								response.append(contentsOf: value.childResponseObjectMap())
							}
						}
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
