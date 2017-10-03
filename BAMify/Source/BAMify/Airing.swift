// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class AiringQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Airing

		@discardableResult
		open func contentId(aliasSuffix: String? = nil) -> AiringQuery {
			addField(field: "contentId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func displayRunTime(aliasSuffix: String? = nil) -> AiringQuery {
			addField(field: "displayRunTime", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func genres(aliasSuffix: String? = nil) -> AiringQuery {
			addField(field: "genres", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func programId(aliasSuffix: String? = nil) -> AiringQuery {
			addField(field: "programId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func runTime(aliasSuffix: String? = nil) -> AiringQuery {
			addField(field: "runTime", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func type(aliasSuffix: String? = nil) -> AiringQuery {
			addField(field: "type", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func mediaId(aliasSuffix: String? = nil) -> AiringQuery {
			addField(field: "mediaId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func milestones(aliasSuffix: String? = nil, _ subfields: (MilestoneQuery) -> Void) -> AiringQuery {
			let subquery = MilestoneQuery()
			subfields(subquery)

			addField(field: "milestones", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func playbackUrls(aliasSuffix: String? = nil, _ subfields: (HypermediaLinkQuery) -> Void) -> AiringQuery {
			let subquery = HypermediaLinkQuery()
			subfields(subquery)

			addField(field: "playbackUrls", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func user(aliasSuffix: String? = nil, _ subfields: (WatchlistBookmarksUserQuery) -> Void) -> AiringQuery {
			let subquery = WatchlistBookmarksUserQuery()
			subfields(subquery)

			addField(field: "user", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func actorsDisplay(aliasSuffix: String? = nil) -> AiringQuery {
			addField(field: "actorsDisplay", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func adId(aliasSuffix: String? = nil) -> AiringQuery {
			addField(field: "adId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func captionLanguages(aliasSuffix: String? = nil) -> AiringQuery {
			addField(field: "captionLanguages", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func channel(aliasSuffix: String? = nil, _ subfields: (EpgChannelQuery) -> Void) -> AiringQuery {
			let subquery = EpgChannelQuery()
			subfields(subquery)

			addField(field: "channel", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func endDate(aliasSuffix: String? = nil) -> AiringQuery {
			addField(field: "endDate", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func eventId(aliasSuffix: String? = nil) -> AiringQuery {
			addField(field: "eventId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func expires(aliasSuffix: String? = nil) -> AiringQuery {
			addField(field: "expires", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func feedLanguage(aliasSuffix: String? = nil) -> AiringQuery {
			addField(field: "feedLanguage", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func feedType(aliasSuffix: String? = nil) -> AiringQuery {
			addField(field: "feedType", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func groupingId(aliasSuffix: String? = nil) -> AiringQuery {
			addField(field: "groupingId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func keywords(aliasSuffix: String? = nil, _ subfields: (EpgKeywordsQuery) -> Void) -> AiringQuery {
			let subquery = EpgKeywordsQuery()
			subfields(subquery)

			addField(field: "keywords", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func linear(aliasSuffix: String? = nil) -> AiringQuery {
			addField(field: "linear", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func mediaConfig(aliasSuffix: String? = nil, _ subfields: (EpgMediaConfigQuery) -> Void) -> AiringQuery {
			let subquery = EpgMediaConfigQuery()
			subfields(subquery)

			addField(field: "mediaConfig", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func partnerProgramId(aliasSuffix: String? = nil) -> AiringQuery {
			addField(field: "partnerProgramId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func photos(aliasSuffix: String? = nil, dimensions: [String]? = nil, max_width: Int32? = nil, max_height: Int32? = nil, min_width: Int32? = nil, min_height: Int32? = nil, _ subfields: (EpgPhotoQuery) -> Void) -> AiringQuery {
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

			let subquery = EpgPhotoQuery()
			subfields(subquery)

			addField(field: "photos", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func programType(aliasSuffix: String? = nil) -> AiringQuery {
			addField(field: "programType", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"Deprecated in favor of ratings")
		@discardableResult
		open func rating(aliasSuffix: String? = nil, _ subfields: (EpgRatingQuery) -> Void) -> AiringQuery {
			let subquery = EpgRatingQuery()
			subfields(subquery)

			addField(field: "rating", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func ratings(aliasSuffix: String? = nil, _ subfields: (RatingQuery) -> Void) -> AiringQuery {
			let subquery = RatingQuery()
			subfields(subquery)

			addField(field: "ratings", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func slates(aliasSuffix: String? = nil, _ subfields: (SlateQuery) -> Void) -> AiringQuery {
			let subquery = SlateQuery()
			subfields(subquery)

			addField(field: "slates", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func startDate(aliasSuffix: String? = nil) -> AiringQuery {
			addField(field: "startDate", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func teams(aliasSuffix: String? = nil, _ subfields: (EpgTeamQuery) -> Void) -> AiringQuery {
			let subquery = EpgTeamQuery()
			subfields(subquery)

			addField(field: "teams", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func titles(aliasSuffix: String? = nil, _ subfields: (EpgTitleQuery) -> Void) -> AiringQuery {
			let subquery = EpgTitleQuery()
			subfields(subquery)

			addField(field: "titles", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func liveBroadcast(aliasSuffix: String? = nil) -> AiringQuery {
			addField(field: "liveBroadcast", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func runtimeMillis(aliasSuffix: String? = nil) -> AiringQuery {
			addField(field: "runtimeMillis", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func slug(aliasSuffix: String? = nil) -> AiringQuery {
			addField(field: "slug", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"No longer used")
		@discardableResult
		open func seriesSlug(aliasSuffix: String? = nil) -> AiringQuery {
			addField(field: "series_slug", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"No longer used")
		@discardableResult
		open func seasonSlug(aliasSuffix: String? = nil) -> AiringQuery {
			addField(field: "season_slug", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func seasonId(aliasSuffix: String? = nil) -> AiringQuery {
			addField(field: "seasonId", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class Airing: GraphQL.AbstractResponse, GraphQLObject, ContentOrContents, Media, PlayableMedia, SearchResultDoc, VideoAiring, Watchable, WatchlistBookmarksPersonalizedHit {
		public typealias Query = AiringQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "contentId":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "displayRunTime":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "genres":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? String else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return value } as [Any?]

				case "programId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "runTime":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "type":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "mediaId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "milestones":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return try Milestone(fields: value) } as [Any?]

				case "playbackUrls":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return try HypermediaLink(fields: value) } as [Any?]

				case "user":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return try WatchlistBookmarksUser(fields: value)

				case "actorsDisplay":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "adId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "captionLanguages":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? String else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return value } as [Any?]

				case "channel":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return try EpgChannel(fields: value)

				case "endDate":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "eventId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "expires":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "feedLanguage":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "feedType":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "groupingId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "keywords":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return try EpgKeywords(fields: value)

				case "linear":
				if value is NSNull { return nil }
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "mediaConfig":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return try EpgMediaConfig(fields: value)

				case "partnerProgramId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "photos":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return try EpgPhoto(fields: value) } as [Any?]

				case "programType":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "rating":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return try EpgRating(fields: value)

				case "ratings":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return try Rating(fields: value) } as [Any?]

				case "slates":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return try Slate(fields: value) } as [Any?]

				case "startDate":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "teams":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return try EpgTeam(fields: value) } as [Any?]

				case "titles":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return try EpgTitle(fields: value) } as [Any?]

				case "liveBroadcast":
				if value is NSNull { return nil }
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "runtimeMillis":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "slug":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "series_slug":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "season_slug":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "seasonId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: Airing.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "Airing" }

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

		open var mediaId: GraphQL.ID? {
			return internalGetMediaId()
		}

		func internalGetMediaId(aliasSuffix: String? = nil) -> GraphQL.ID? {
			return field(field: "mediaId", aliasSuffix: aliasSuffix) as! GraphQL.ID?
		}

		open var milestones: [BAMify.Milestone?]? {
			return internalGetMilestones()
		}

		func internalGetMilestones(aliasSuffix: String? = nil) -> [BAMify.Milestone?]? {
			return field(field: "milestones", aliasSuffix: aliasSuffix) as! [BAMify.Milestone?]?
		}

		open var playbackUrls: [BAMify.HypermediaLink?]? {
			return internalGetPlaybackUrls()
		}

		func internalGetPlaybackUrls(aliasSuffix: String? = nil) -> [BAMify.HypermediaLink?]? {
			return field(field: "playbackUrls", aliasSuffix: aliasSuffix) as! [BAMify.HypermediaLink?]?
		}

		open var user: BAMify.WatchlistBookmarksUser? {
			return internalGetUser()
		}

		func internalGetUser(aliasSuffix: String? = nil) -> BAMify.WatchlistBookmarksUser? {
			return field(field: "user", aliasSuffix: aliasSuffix) as! BAMify.WatchlistBookmarksUser?
		}

		open var actorsDisplay: String? {
			return internalGetActorsDisplay()
		}

		func internalGetActorsDisplay(aliasSuffix: String? = nil) -> String? {
			return field(field: "actorsDisplay", aliasSuffix: aliasSuffix) as! String?
		}

		open var adId: String? {
			return internalGetAdId()
		}

		func internalGetAdId(aliasSuffix: String? = nil) -> String? {
			return field(field: "adId", aliasSuffix: aliasSuffix) as! String?
		}

		open var captionLanguages: [String?]? {
			return internalGetCaptionLanguages()
		}

		func internalGetCaptionLanguages(aliasSuffix: String? = nil) -> [String?]? {
			return field(field: "captionLanguages", aliasSuffix: aliasSuffix) as! [String?]?
		}

		open var channel: BAMify.EpgChannel? {
			return internalGetChannel()
		}

		func internalGetChannel(aliasSuffix: String? = nil) -> BAMify.EpgChannel? {
			return field(field: "channel", aliasSuffix: aliasSuffix) as! BAMify.EpgChannel?
		}

		open var endDate: String? {
			return internalGetEndDate()
		}

		func internalGetEndDate(aliasSuffix: String? = nil) -> String? {
			return field(field: "endDate", aliasSuffix: aliasSuffix) as! String?
		}

		open var eventId: GraphQL.ID? {
			return internalGetEventId()
		}

		func internalGetEventId(aliasSuffix: String? = nil) -> GraphQL.ID? {
			return field(field: "eventId", aliasSuffix: aliasSuffix) as! GraphQL.ID?
		}

		open var expires: String? {
			return internalGetExpires()
		}

		func internalGetExpires(aliasSuffix: String? = nil) -> String? {
			return field(field: "expires", aliasSuffix: aliasSuffix) as! String?
		}

		open var feedLanguage: String? {
			return internalGetFeedLanguage()
		}

		func internalGetFeedLanguage(aliasSuffix: String? = nil) -> String? {
			return field(field: "feedLanguage", aliasSuffix: aliasSuffix) as! String?
		}

		open var feedType: String? {
			return internalGetFeedType()
		}

		func internalGetFeedType(aliasSuffix: String? = nil) -> String? {
			return field(field: "feedType", aliasSuffix: aliasSuffix) as! String?
		}

		open var groupingId: GraphQL.ID? {
			return internalGetGroupingId()
		}

		func internalGetGroupingId(aliasSuffix: String? = nil) -> GraphQL.ID? {
			return field(field: "groupingId", aliasSuffix: aliasSuffix) as! GraphQL.ID?
		}

		open var keywords: BAMify.EpgKeywords? {
			return internalGetKeywords()
		}

		func internalGetKeywords(aliasSuffix: String? = nil) -> BAMify.EpgKeywords? {
			return field(field: "keywords", aliasSuffix: aliasSuffix) as! BAMify.EpgKeywords?
		}

		open var linear: Bool? {
			return internalGetLinear()
		}

		func internalGetLinear(aliasSuffix: String? = nil) -> Bool? {
			return field(field: "linear", aliasSuffix: aliasSuffix) as! Bool?
		}

		open var mediaConfig: BAMify.EpgMediaConfig? {
			return internalGetMediaConfig()
		}

		func internalGetMediaConfig(aliasSuffix: String? = nil) -> BAMify.EpgMediaConfig? {
			return field(field: "mediaConfig", aliasSuffix: aliasSuffix) as! BAMify.EpgMediaConfig?
		}

		open var partnerProgramId: GraphQL.ID? {
			return internalGetPartnerProgramId()
		}

		func internalGetPartnerProgramId(aliasSuffix: String? = nil) -> GraphQL.ID? {
			return field(field: "partnerProgramId", aliasSuffix: aliasSuffix) as! GraphQL.ID?
		}

		open var photos: [BAMify.EpgPhoto?]? {
			return internalGetPhotos()
		}

		open func aliasedPhotos(aliasSuffix: String) -> [BAMify.EpgPhoto?]? {
			return internalGetPhotos(aliasSuffix: aliasSuffix)
		}

		func internalGetPhotos(aliasSuffix: String? = nil) -> [BAMify.EpgPhoto?]? {
			return field(field: "photos", aliasSuffix: aliasSuffix) as! [BAMify.EpgPhoto?]?
		}

		open var programType: String? {
			return internalGetProgramType()
		}

		func internalGetProgramType(aliasSuffix: String? = nil) -> String? {
			return field(field: "programType", aliasSuffix: aliasSuffix) as! String?
		}

		@available(*, deprecated, message:"Deprecated in favor of ratings")
		open var rating: BAMify.EpgRating? {
			return internalGetRating()
		}

		func internalGetRating(aliasSuffix: String? = nil) -> BAMify.EpgRating? {
			return field(field: "rating", aliasSuffix: aliasSuffix) as! BAMify.EpgRating?
		}

		open var ratings: [BAMify.Rating?]? {
			return internalGetRatings()
		}

		func internalGetRatings(aliasSuffix: String? = nil) -> [BAMify.Rating?]? {
			return field(field: "ratings", aliasSuffix: aliasSuffix) as! [BAMify.Rating?]?
		}

		open var slates: [BAMify.Slate?]? {
			return internalGetSlates()
		}

		func internalGetSlates(aliasSuffix: String? = nil) -> [BAMify.Slate?]? {
			return field(field: "slates", aliasSuffix: aliasSuffix) as! [BAMify.Slate?]?
		}

		open var startDate: String? {
			return internalGetStartDate()
		}

		func internalGetStartDate(aliasSuffix: String? = nil) -> String? {
			return field(field: "startDate", aliasSuffix: aliasSuffix) as! String?
		}

		open var teams: [BAMify.EpgTeam?]? {
			return internalGetTeams()
		}

		func internalGetTeams(aliasSuffix: String? = nil) -> [BAMify.EpgTeam?]? {
			return field(field: "teams", aliasSuffix: aliasSuffix) as! [BAMify.EpgTeam?]?
		}

		open var titles: [BAMify.EpgTitle?]? {
			return internalGetTitles()
		}

		func internalGetTitles(aliasSuffix: String? = nil) -> [BAMify.EpgTitle?]? {
			return field(field: "titles", aliasSuffix: aliasSuffix) as! [BAMify.EpgTitle?]?
		}

		open var liveBroadcast: Bool? {
			return internalGetLiveBroadcast()
		}

		func internalGetLiveBroadcast(aliasSuffix: String? = nil) -> Bool? {
			return field(field: "liveBroadcast", aliasSuffix: aliasSuffix) as! Bool?
		}

		open var runtimeMillis: Int32? {
			return internalGetRuntimeMillis()
		}

		func internalGetRuntimeMillis(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "runtimeMillis", aliasSuffix: aliasSuffix) as! Int32?
		}

		open var slug: String? {
			return internalGetSlug()
		}

		func internalGetSlug(aliasSuffix: String? = nil) -> String? {
			return field(field: "slug", aliasSuffix: aliasSuffix) as! String?
		}

		@available(*, deprecated, message:"No longer used")
		open var seriesSlug: String? {
			return internalGetSeriesSlug()
		}

		func internalGetSeriesSlug(aliasSuffix: String? = nil) -> String? {
			return field(field: "series_slug", aliasSuffix: aliasSuffix) as! String?
		}

		@available(*, deprecated, message:"No longer used")
		open var seasonSlug: String? {
			return internalGetSeasonSlug()
		}

		func internalGetSeasonSlug(aliasSuffix: String? = nil) -> String? {
			return field(field: "season_slug", aliasSuffix: aliasSuffix) as! String?
		}

		open var seasonId: String? {
			return internalGetSeasonId()
		}

		func internalGetSeasonId(aliasSuffix: String? = nil) -> String? {
			return field(field: "seasonId", aliasSuffix: aliasSuffix) as! String?
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

				case "mediaId":

				return .scalar

				case "milestones":

				return .objectList

				case "playbackUrls":

				return .objectList

				case "user":

				return .object

				case "actorsDisplay":

				return .scalar

				case "adId":

				return .scalar

				case "captionLanguages":

				return .scalarList

				case "channel":

				return .object

				case "endDate":

				return .scalar

				case "eventId":

				return .scalar

				case "expires":

				return .scalar

				case "feedLanguage":

				return .scalar

				case "feedType":

				return .scalar

				case "groupingId":

				return .scalar

				case "keywords":

				return .object

				case "linear":

				return .scalar

				case "mediaConfig":

				return .object

				case "partnerProgramId":

				return .scalar

				case "photos":

				return .objectList

				case "programType":

				return .scalar

				case "rating":

				return .object

				case "ratings":

				return .objectList

				case "slates":

				return .objectList

				case "startDate":

				return .scalar

				case "teams":

				return .objectList

				case "titles":

				return .objectList

				case "liveBroadcast":

				return .scalar

				case "runtimeMillis":

				return .scalar

				case "slug":

				return .scalar

				case "series_slug":

				return .scalar

				case "season_slug":

				return .scalar

				case "seasonId":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "user":
				return internalGetUser()

				case "channel":
				return internalGetChannel()

				case "keywords":
				return internalGetKeywords()

				case "mediaConfig":
				return internalGetMediaConfig()

				case "rating":
				return internalGetRating()

				default:
				break
			}
			return nil
		}

		override open func fetchChildObjectList(key: String) -> [GraphQL.AbstractResponse] {
			switch(key) {
				case "milestones":
				return internalGetMilestones() ?? []

				case "playbackUrls":
				return internalGetPlaybackUrls() ?? []

				case "photos":
				return internalGetPhotos() ?? []

				case "ratings":
				return internalGetRatings() ?? []

				case "slates":
				return internalGetSlates() ?? []

				case "teams":
				return internalGetTeams() ?? []

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
					case "milestones":
					if let value = internalGetMilestones() {
						value.forEach {
							if let value = $0 {
								response.append(value)
								response.append(contentsOf: value.childResponseObjectMap())
							}
						}
					}

					case "playbackUrls":
					if let value = internalGetPlaybackUrls() {
						value.forEach {
							if let value = $0 {
								response.append(value)
								response.append(contentsOf: value.childResponseObjectMap())
							}
						}
					}

					case "user":
					if let value = internalGetUser() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "channel":
					if let value = internalGetChannel() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "keywords":
					if let value = internalGetKeywords() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "mediaConfig":
					if let value = internalGetMediaConfig() {
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

					case "rating":
					if let value = internalGetRating() {
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

					case "teams":
					if let value = internalGetTeams() {
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
