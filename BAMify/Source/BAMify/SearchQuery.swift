// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class SearchQueryQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = SearchQuery

		@discardableResult
		open func query(aliasSuffix: String? = nil, index: String, must: BoolFilter? = nil, must_not: BoolFilter? = nil, should: BoolFilter? = nil, q: String? = nil, fq: String? = nil, page: Int32? = nil, page_size: Int32? = nil, sort: SortOrder? = nil, type: [String]? = nil, from: String? = nil, to: String? = nil, highlight: Bool? = nil, facet: [String]? = nil, bbox: BoundingBox? = nil, radius: Radius? = nil, spotlight: Bool? = nil, _ subfields: (QueryResponseQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("index:\(GraphQL.quoteString(input: index))")

			if let must = must {
				args.append("must:\(must.serialize())")
			}

			if let must_not = must_not {
				args.append("must_not:\(must_not.serialize())")
			}

			if let should = should {
				args.append("should:\(should.serialize())")
			}

			if let q = q {
				args.append("q:\(GraphQL.quoteString(input: q))")
			}

			if let fq = fq {
				args.append("fq:\(GraphQL.quoteString(input: fq))")
			}

			if let page = page {
				args.append("page:\(page)")
			}

			if let page_size = page_size {
				args.append("page_size:\(page_size)")
			}

			if let sort = sort {
				args.append("sort:\(sort.rawValue)")
			}

			if let type = type {
				args.append("type:[\(type.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")
			}

			if let from = from {
				args.append("from:\(GraphQL.quoteString(input: from))")
			}

			if let to = to {
				args.append("to:\(GraphQL.quoteString(input: to))")
			}

			if let highlight = highlight {
				args.append("highlight:\(highlight)")
			}

			if let facet = facet {
				args.append("facet:[\(facet.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")
			}

			if let bbox = bbox {
				args.append("bbox:\(bbox.serialize())")
			}

			if let radius = radius {
				args.append("radius:\(radius.serialize())")
			}

			if let spotlight = spotlight {
				args.append("spotlight:\(spotlight)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = QueryResponseQuery()
			subfields(subquery)

			addField(field: "query", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func `prefix`(aliasSuffix: String? = nil, index: String, must: BoolFilter? = nil, must_not: BoolFilter? = nil, should: BoolFilter? = nil, q: String? = nil, fq: String? = nil, page: Int32? = nil, page_size: Int32? = nil, sort: SortOrder? = nil, type: [String]? = nil, from: String? = nil, to: String? = nil, highlight: Bool? = nil, facet: [String]? = nil, bbox: BoundingBox? = nil, radius: Radius? = nil, spotlight: Bool? = nil, _ subfields: (PrefixResponseQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("index:\(GraphQL.quoteString(input: index))")

			if let must = must {
				args.append("must:\(must.serialize())")
			}

			if let must_not = must_not {
				args.append("must_not:\(must_not.serialize())")
			}

			if let should = should {
				args.append("should:\(should.serialize())")
			}

			if let q = q {
				args.append("q:\(GraphQL.quoteString(input: q))")
			}

			if let fq = fq {
				args.append("fq:\(GraphQL.quoteString(input: fq))")
			}

			if let page = page {
				args.append("page:\(page)")
			}

			if let page_size = page_size {
				args.append("page_size:\(page_size)")
			}

			if let sort = sort {
				args.append("sort:\(sort.rawValue)")
			}

			if let type = type {
				args.append("type:[\(type.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")
			}

			if let from = from {
				args.append("from:\(GraphQL.quoteString(input: from))")
			}

			if let to = to {
				args.append("to:\(GraphQL.quoteString(input: to))")
			}

			if let highlight = highlight {
				args.append("highlight:\(highlight)")
			}

			if let facet = facet {
				args.append("facet:[\(facet.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")
			}

			if let bbox = bbox {
				args.append("bbox:\(bbox.serialize())")
			}

			if let radius = radius {
				args.append("radius:\(radius.serialize())")
			}

			if let spotlight = spotlight {
				args.append("spotlight:\(spotlight)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = PrefixResponseQuery()
			subfields(subquery)

			addField(field: "prefix", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func sitesearch(aliasSuffix: String? = nil, index: String, must: BoolFilter? = nil, must_not: BoolFilter? = nil, should: BoolFilter? = nil, q: String? = nil, fq: String? = nil, page: Int32? = nil, page_size: Int32? = nil, sort: SortOrder? = nil, type: [String]? = nil, from: String? = nil, to: String? = nil, highlight: Bool? = nil, facet: [String]? = nil, spotlight: Bool? = nil, _ subfields: (SitesearchResponseQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("index:\(GraphQL.quoteString(input: index))")

			if let must = must {
				args.append("must:\(must.serialize())")
			}

			if let must_not = must_not {
				args.append("must_not:\(must_not.serialize())")
			}

			if let should = should {
				args.append("should:\(should.serialize())")
			}

			if let q = q {
				args.append("q:\(GraphQL.quoteString(input: q))")
			}

			if let fq = fq {
				args.append("fq:\(GraphQL.quoteString(input: fq))")
			}

			if let page = page {
				args.append("page:\(page)")
			}

			if let page_size = page_size {
				args.append("page_size:\(page_size)")
			}

			if let sort = sort {
				args.append("sort:\(sort.rawValue)")
			}

			if let type = type {
				args.append("type:[\(type.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")
			}

			if let from = from {
				args.append("from:\(GraphQL.quoteString(input: from))")
			}

			if let to = to {
				args.append("to:\(GraphQL.quoteString(input: to))")
			}

			if let highlight = highlight {
				args.append("highlight:\(highlight)")
			}

			if let facet = facet {
				args.append("facet:[\(facet.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")
			}

			if let spotlight = spotlight {
				args.append("spotlight:\(spotlight)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = SitesearchResponseQuery()
			subfields(subquery)

			addField(field: "sitesearch", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func bucket(aliasSuffix: String? = nil, index: String, must: BoolFilter? = nil, must_not: BoolFilter? = nil, should: BoolFilter? = nil, q: String? = nil, fq: String? = nil, page: Int32? = nil, page_size: Int32? = nil, sort: SortOrder? = nil, type: [String]? = nil, from: String? = nil, to: String? = nil, highlight: Bool? = nil, facet: [String], bbox: BoundingBox? = nil, radius: Radius? = nil, spotlight: Bool? = nil, _ subfields: (TopFoundHitsResponseQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("index:\(GraphQL.quoteString(input: index))")

			args.append("facet:[\(facet.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")

			if let must = must {
				args.append("must:\(must.serialize())")
			}

			if let must_not = must_not {
				args.append("must_not:\(must_not.serialize())")
			}

			if let should = should {
				args.append("should:\(should.serialize())")
			}

			if let q = q {
				args.append("q:\(GraphQL.quoteString(input: q))")
			}

			if let fq = fq {
				args.append("fq:\(GraphQL.quoteString(input: fq))")
			}

			if let page = page {
				args.append("page:\(page)")
			}

			if let page_size = page_size {
				args.append("page_size:\(page_size)")
			}

			if let sort = sort {
				args.append("sort:\(sort.rawValue)")
			}

			if let type = type {
				args.append("type:[\(type.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")
			}

			if let from = from {
				args.append("from:\(GraphQL.quoteString(input: from))")
			}

			if let to = to {
				args.append("to:\(GraphQL.quoteString(input: to))")
			}

			if let highlight = highlight {
				args.append("highlight:\(highlight)")
			}

			if let bbox = bbox {
				args.append("bbox:\(bbox.serialize())")
			}

			if let radius = radius {
				args.append("radius:\(radius.serialize())")
			}

			if let spotlight = spotlight {
				args.append("spotlight:\(spotlight)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = TopFoundHitsResponseQuery()
			subfields(subquery)

			addField(field: "bucket", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func bookmarks(aliasSuffix: String? = nil, type: [String]? = nil, show_completed: Bool? = nil, page_size: Int32? = nil, page: Int32? = nil, _ subfields: (MediaResponseQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			if let type = type {
				args.append("type:[\(type.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")
			}

			if let show_completed = show_completed {
				args.append("show_completed:\(show_completed)")
			}

			if let page_size = page_size {
				args.append("page_size:\(page_size)")
			}

			if let page = page {
				args.append("page:\(page)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = MediaResponseQuery()
			subfields(subquery)

			addField(field: "bookmarks", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func watchlist(aliasSuffix: String? = nil, type: [String]? = nil, page_size: Int32? = nil, page: Int32? = nil, _ subfields: (MediaResponseQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			if let type = type {
				args.append("type:[\(type.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")
			}

			if let page_size = page_size {
				args.append("page_size:\(page_size)")
			}

			if let page = page {
				args.append("page:\(page)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = MediaResponseQuery()
			subfields(subquery)

			addField(field: "watchlist", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func airings(aliasSuffix: String? = nil, startDate: String? = nil, endDate: String? = nil, onAir: Bool? = nil, upcoming: Bool? = nil, genre: String? = nil, programType: String? = nil, partnerProgramIds: [GraphQL.ID]? = nil, channelId: GraphQL.ID? = nil, contentId: GraphQL.ID? = nil, groupingId: GraphQL.ID? = nil, endsAfter: String? = nil, languages: [String]? = nil, channelCallsigns: [String]? = nil, page: Int32? = nil, pageSize: Int32? = nil, _ subfields: (AiringQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			if let startDate = startDate {
				args.append("startDate:\(GraphQL.quoteString(input: startDate))")
			}

			if let endDate = endDate {
				args.append("endDate:\(GraphQL.quoteString(input: endDate))")
			}

			if let onAir = onAir {
				args.append("onAir:\(onAir)")
			}

			if let upcoming = upcoming {
				args.append("upcoming:\(upcoming)")
			}

			if let genre = genre {
				args.append("genre:\(GraphQL.quoteString(input: genre))")
			}

			if let programType = programType {
				args.append("programType:\(GraphQL.quoteString(input: programType))")
			}

			if let partnerProgramIds = partnerProgramIds {
				args.append("partnerProgramIds:[\(partnerProgramIds.map{ "\(GraphQL.quoteString(input: "\($0.rawValue)"))" }.joined(separator: ","))]")
			}

			if let channelId = channelId {
				args.append("channelId:\(GraphQL.quoteString(input: "\(channelId.rawValue)"))")
			}

			if let contentId = contentId {
				args.append("contentId:\(GraphQL.quoteString(input: "\(contentId.rawValue)"))")
			}

			if let groupingId = groupingId {
				args.append("groupingId:\(GraphQL.quoteString(input: "\(groupingId.rawValue)"))")
			}

			if let endsAfter = endsAfter {
				args.append("endsAfter:\(GraphQL.quoteString(input: endsAfter))")
			}

			if let languages = languages {
				args.append("languages:[\(languages.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")
			}

			if let channelCallsigns = channelCallsigns {
				args.append("channelCallsigns:[\(channelCallsigns.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")
			}

			if let page = page {
				args.append("page:\(page)")
			}

			if let pageSize = pageSize {
				args.append("pageSize:\(pageSize)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = AiringQuery()
			subfields(subquery)

			addField(field: "Airings", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func categoryAll(aliasSuffix: String? = nil, page: Int32? = nil, pageSize: Int32? = nil, _ subfields: (CategoryQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			if let page = page {
				args.append("page:\(page)")
			}

			if let pageSize = pageSize {
				args.append("pageSize:\(pageSize)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = CategoryQuery()
			subfields(subquery)

			addField(field: "CategoryAll", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func categoryByContentId(aliasSuffix: String? = nil, contentId: GraphQL.ID, _ subfields: (CategoryQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("contentId:\(GraphQL.quoteString(input: "\(contentId.rawValue)"))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = CategoryQuery()
			subfields(subquery)

			addField(field: "CategoryByContentId", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func categoryBySport(aliasSuffix: String? = nil, sport: String, page: Int32? = nil, pageSize: Int32? = nil, _ subfields: (CategoryQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("sport:\(GraphQL.quoteString(input: sport))")

			if let page = page {
				args.append("page:\(page)")
			}

			if let pageSize = pageSize {
				args.append("pageSize:\(pageSize)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = CategoryQuery()
			subfields(subquery)

			addField(field: "CategoryBySport", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func channelAll(aliasSuffix: String? = nil, page: Int32? = nil, pageSize: Int32? = nil, _ subfields: (ChannelQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			if let page = page {
				args.append("page:\(page)")
			}

			if let pageSize = pageSize {
				args.append("pageSize:\(pageSize)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = ChannelQuery()
			subfields(subquery)

			addField(field: "ChannelAll", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func channelByContentId(aliasSuffix: String? = nil, contentId: GraphQL.ID, _ subfields: (ChannelQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("contentId:\(GraphQL.quoteString(input: "\(contentId.rawValue)"))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = ChannelQuery()
			subfields(subquery)

			addField(field: "ChannelByContentId", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func collectionAll(aliasSuffix: String? = nil, _ subfields: (CollectionQuery) -> Void) -> SearchQueryQuery {
			let subquery = CollectionQuery()
			subfields(subquery)

			addField(field: "CollectionAll", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func collectionByContentId(aliasSuffix: String? = nil, contentId: GraphQL.ID, _ subfields: (CollectionQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("contentId:\(GraphQL.quoteString(input: "\(contentId.rawValue)"))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = CollectionQuery()
			subfields(subquery)

			addField(field: "CollectionByContentId", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func configurationJsonByContentId(aliasSuffix: String? = nil, contentId: GraphQL.ID, _ subfields: (ConfigurationJsonQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("contentId:\(GraphQL.quoteString(input: "\(contentId.rawValue)"))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = ConfigurationJsonQuery()
			subfields(subquery)

			addField(field: "ConfigurationJsonByContentId", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func configurationJsonByResourceKey(aliasSuffix: String? = nil, resourceKey: GraphQL.ID, _ subfields: (ConfigurationJsonQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("resourceKey:\(GraphQL.quoteString(input: "\(resourceKey.rawValue)"))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = ConfigurationJsonQuery()
			subfields(subquery)

			addField(field: "ConfigurationJsonByResourceKey", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func configurationStructuredByContentId(aliasSuffix: String? = nil, contentId: GraphQL.ID, _ subfields: (ConfigurationStructuredQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("contentId:\(GraphQL.quoteString(input: "\(contentId.rawValue)"))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = ConfigurationStructuredQuery()
			subfields(subquery)

			addField(field: "ConfigurationStructuredByContentId", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func dimensionByContentId(aliasSuffix: String? = nil, contentId: GraphQL.ID, _ subfields: (DimensionQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("contentId:\(GraphQL.quoteString(input: "\(contentId.rawValue)"))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = DimensionQuery()
			subfields(subquery)

			addField(field: "DimensionByContentId", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func eventPageAll(aliasSuffix: String? = nil, page: Int32? = nil, pageSize: Int32? = nil, _ subfields: (EventPageQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			if let page = page {
				args.append("page:\(page)")
			}

			if let pageSize = pageSize {
				args.append("pageSize:\(pageSize)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = EventPageQuery()
			subfields(subquery)

			addField(field: "EventPageAll", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func eventPageByContentId(aliasSuffix: String? = nil, contentId: GraphQL.ID, _ subfields: (EventPageQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("contentId:\(GraphQL.quoteString(input: "\(contentId.rawValue)"))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = EventPageQuery()
			subfields(subquery)

			addField(field: "EventPageByContentId", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@available(*, deprecated, message:"Use `EventPageAll`")
		@discardableResult
		open func eventPageByLanguage(aliasSuffix: String? = nil, language: String, page: Int32? = nil, pageSize: Int32? = nil, _ subfields: (EventPageQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("language:\(GraphQL.quoteString(input: language))")

			if let page = page {
				args.append("page:\(page)")
			}

			if let pageSize = pageSize {
				args.append("pageSize:\(pageSize)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = EventPageQuery()
			subfields(subquery)

			addField(field: "EventPageByLanguage", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func fieldOptionByContentId(aliasSuffix: String? = nil, contentId: GraphQL.ID, _ subfields: (FieldOptionQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("contentId:\(GraphQL.quoteString(input: "\(contentId.rawValue)"))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = FieldOptionQuery()
			subfields(subquery)

			addField(field: "FieldOptionByContentId", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func keyValueByContentId(aliasSuffix: String? = nil, contentId: GraphQL.ID, _ subfields: (KeyValueQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("contentId:\(GraphQL.quoteString(input: "\(contentId.rawValue)"))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = KeyValueQuery()
			subfields(subquery)

			addField(field: "KeyValueByContentId", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func listByContentId(aliasSuffix: String? = nil, contentId: GraphQL.ID, _ subfields: (ListQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("contentId:\(GraphQL.quoteString(input: "\(contentId.rawValue)"))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = ListQuery()
			subfields(subquery)

			addField(field: "ListByContentId", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func listByTitle(aliasSuffix: String? = nil, title: String, page: Int32? = nil, pageSize: Int32? = nil, _ subfields: (ListQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("title:\(GraphQL.quoteString(input: title))")

			if let page = page {
				args.append("page:\(page)")
			}

			if let pageSize = pageSize {
				args.append("pageSize:\(pageSize)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = ListQuery()
			subfields(subquery)

			addField(field: "ListByTitle", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func masterCutByContentId(aliasSuffix: String? = nil, contentId: GraphQL.ID, _ subfields: (MasterCutQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("contentId:\(GraphQL.quoteString(input: "\(contentId.rawValue)"))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = MasterCutQuery()
			subfields(subquery)

			addField(field: "MasterCutByContentId", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func media(aliasSuffix: String? = nil, partnerProgramIds: [GraphQL.ID]? = nil, groupingId: GraphQL.ID? = nil, genre: String? = nil, programType: String? = nil, languages: [String]? = nil, page: Int32? = nil, pageSize: Int32? = nil, _ subfields: (MediaListQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			if let partnerProgramIds = partnerProgramIds {
				args.append("partnerProgramIds:[\(partnerProgramIds.map{ "\(GraphQL.quoteString(input: "\($0.rawValue)"))" }.joined(separator: ","))]")
			}

			if let groupingId = groupingId {
				args.append("groupingId:\(GraphQL.quoteString(input: "\(groupingId.rawValue)"))")
			}

			if let genre = genre {
				args.append("genre:\(GraphQL.quoteString(input: genre))")
			}

			if let programType = programType {
				args.append("programType:\(GraphQL.quoteString(input: programType))")
			}

			if let languages = languages {
				args.append("languages:[\(languages.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")
			}

			if let page = page {
				args.append("page:\(page)")
			}

			if let pageSize = pageSize {
				args.append("pageSize:\(pageSize)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = MediaListQuery()
			subfields(subquery)

			addField(field: "Media", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func mediaAssetByContentId(aliasSuffix: String? = nil, contentId: GraphQL.ID, _ subfields: (MediaAssetQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("contentId:\(GraphQL.quoteString(input: "\(contentId.rawValue)"))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = MediaAssetQuery()
			subfields(subquery)

			addField(field: "MediaAssetByContentId", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func pageByContentId(aliasSuffix: String? = nil, contentId: GraphQL.ID, _ subfields: (PageQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("contentId:\(GraphQL.quoteString(input: "\(contentId.rawValue)"))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = PageQuery()
			subfields(subquery)

			addField(field: "PageByContentId", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func pageByResourceKey(aliasSuffix: String? = nil, resourceKey: GraphQL.ID, _ subfields: (PageQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("resourceKey:\(GraphQL.quoteString(input: "\(resourceKey.rawValue)"))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = PageQuery()
			subfields(subquery)

			addField(field: "PageByResourceKey", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func photoAssetByContentId(aliasSuffix: String? = nil, contentId: GraphQL.ID, _ subfields: (PhotoAssetQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("contentId:\(GraphQL.quoteString(input: "\(contentId.rawValue)"))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = PhotoAssetQuery()
			subfields(subquery)

			addField(field: "PhotoAssetByContentId", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func photoByContentId(aliasSuffix: String? = nil, contentId: GraphQL.ID, _ subfields: (PhotoQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("contentId:\(GraphQL.quoteString(input: "\(contentId.rawValue)"))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = PhotoQuery()
			subfields(subquery)

			addField(field: "PhotoByContentId", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func photoTemplateByContentId(aliasSuffix: String? = nil, contentId: GraphQL.ID, _ subfields: (PhotoTemplateQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("contentId:\(GraphQL.quoteString(input: "\(contentId.rawValue)"))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = PhotoTemplateQuery()
			subfields(subquery)

			addField(field: "PhotoTemplateByContentId", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func postplay(aliasSuffix: String? = nil, contentId: GraphQL.ID, collectionContentId: GraphQL.ID? = nil, seriesContentId: GraphQL.ID? = nil, _ subfields: (PostPlayResponseQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("contentId:\(GraphQL.quoteString(input: "\(contentId.rawValue)"))")

			if let collectionContentId = collectionContentId {
				args.append("collectionContentId:\(GraphQL.quoteString(input: "\(collectionContentId.rawValue)"))")
			}

			if let seriesContentId = seriesContentId {
				args.append("seriesContentId:\(GraphQL.quoteString(input: "\(seriesContentId.rawValue)"))")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = PostPlayResponseQuery()
			subfields(subquery)

			addField(field: "postplay", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func schedule(aliasSuffix: String? = nil, channelIds: [String]? = nil, startDate: String? = nil, endDate: String? = nil, onAir: Bool? = nil, page: Int32? = nil, pageSize: Int32? = nil, _ subfields: (ChannelScheduleQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			if let channelIds = channelIds {
				args.append("channelIds:[\(channelIds.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")
			}

			if let startDate = startDate {
				args.append("startDate:\(GraphQL.quoteString(input: startDate))")
			}

			if let endDate = endDate {
				args.append("endDate:\(GraphQL.quoteString(input: endDate))")
			}

			if let onAir = onAir {
				args.append("onAir:\(onAir)")
			}

			if let page = page {
				args.append("page:\(page)")
			}

			if let pageSize = pageSize {
				args.append("pageSize:\(pageSize)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = ChannelScheduleQuery()
			subfields(subquery)

			addField(field: "Schedule", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func seasonAll(aliasSuffix: String? = nil, _ subfields: (SeasonQuery) -> Void) -> SearchQueryQuery {
			let subquery = SeasonQuery()
			subfields(subquery)

			addField(field: "SeasonAll", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func seasonByContentId(aliasSuffix: String? = nil, contentId: GraphQL.ID, _ subfields: (SeasonQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("contentId:\(GraphQL.quoteString(input: "\(contentId.rawValue)"))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = SeasonQuery()
			subfields(subquery)

			addField(field: "SeasonByContentId", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func seasonBySeasonId(aliasSuffix: String? = nil, seasonId: String, _ subfields: (SeasonQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("seasonId:\(GraphQL.quoteString(input: seasonId))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = SeasonQuery()
			subfields(subquery)

			addField(field: "SeasonBySeasonId", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@available(*, deprecated, message:"Use `SeasonBySeasonId`")
		@discardableResult
		open func seasonBySeasonIdAndLanguage(aliasSuffix: String? = nil, seasonId: String, language: String, _ subfields: (SeasonQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("seasonId:\(GraphQL.quoteString(input: seasonId))")

			args.append("language:\(GraphQL.quoteString(input: language))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = SeasonQuery()
			subfields(subquery)

			addField(field: "SeasonBySeasonIdAndLanguage", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func seasonBySeriesSlug(aliasSuffix: String? = nil, seriesSlug: String, _ subfields: (SeasonQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("seriesSlug:\(GraphQL.quoteString(input: seriesSlug))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = SeasonQuery()
			subfields(subquery)

			addField(field: "SeasonBySeriesSlug", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func seasonContainerByContentId(aliasSuffix: String? = nil, contentId: GraphQL.ID, _ subfields: (SeasonContainerQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("contentId:\(GraphQL.quoteString(input: "\(contentId.rawValue)"))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = SeasonContainerQuery()
			subfields(subquery)

			addField(field: "SeasonContainerByContentId", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func sectionByContentId(aliasSuffix: String? = nil, contentId: GraphQL.ID, _ subfields: (SectionQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("contentId:\(GraphQL.quoteString(input: "\(contentId.rawValue)"))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = SectionQuery()
			subfields(subquery)

			addField(field: "SectionByContentId", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func seriesAll(aliasSuffix: String? = nil, _ subfields: (SeriesQuery) -> Void) -> SearchQueryQuery {
			let subquery = SeriesQuery()
			subfields(subquery)

			addField(field: "SeriesAll", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func seriesByCategory(aliasSuffix: String? = nil, category: String, page: Int32? = nil, pageSize: Int32? = nil, _ subfields: (SeriesQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("category:\(GraphQL.quoteString(input: category))")

			if let page = page {
				args.append("page:\(page)")
			}

			if let pageSize = pageSize {
				args.append("pageSize:\(pageSize)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = SeriesQuery()
			subfields(subquery)

			addField(field: "SeriesByCategory", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func seriesByContentId(aliasSuffix: String? = nil, contentId: GraphQL.ID, _ subfields: (SeriesQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("contentId:\(GraphQL.quoteString(input: "\(contentId.rawValue)"))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = SeriesQuery()
			subfields(subquery)

			addField(field: "SeriesByContentId", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func seriesByGenre(aliasSuffix: String? = nil, genre: String, _ subfields: (SeriesQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("genre:\(GraphQL.quoteString(input: genre))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = SeriesQuery()
			subfields(subquery)

			addField(field: "SeriesByGenre", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func seriesBySeriesId(aliasSuffix: String? = nil, seriesId: String, _ subfields: (SeriesQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("seriesId:\(GraphQL.quoteString(input: seriesId))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = SeriesQuery()
			subfields(subquery)

			addField(field: "SeriesBySeriesId", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@available(*, deprecated, message:"Use `SeriesBySeriesId`")
		@discardableResult
		open func seriesBySeriesIdAndLanguage(aliasSuffix: String? = nil, seriesId: String, language: String, _ subfields: (SeriesQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("seriesId:\(GraphQL.quoteString(input: seriesId))")

			args.append("language:\(GraphQL.quoteString(input: language))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = SeriesQuery()
			subfields(subquery)

			addField(field: "SeriesBySeriesIdAndLanguage", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func seriesBySeriesSlug(aliasSuffix: String? = nil, seriesSlug: String, _ subfields: (SeriesQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("seriesSlug:\(GraphQL.quoteString(input: seriesSlug))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = SeriesQuery()
			subfields(subquery)

			addField(field: "SeriesBySeriesSlug", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func seriesContainerByContentId(aliasSuffix: String? = nil, contentId: GraphQL.ID, _ subfields: (SeriesContainerQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("contentId:\(GraphQL.quoteString(input: "\(contentId.rawValue)"))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = SeriesContainerQuery()
			subfields(subquery)

			addField(field: "SeriesContainerByContentId", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func shortContentByContentId(aliasSuffix: String? = nil, contentId: GraphQL.ID, _ subfields: (ShortContentQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("contentId:\(GraphQL.quoteString(input: "\(contentId.rawValue)"))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = ShortContentQuery()
			subfields(subquery)

			addField(field: "ShortContentByContentId", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func templateAspectRatioByContentId(aliasSuffix: String? = nil, contentId: GraphQL.ID, _ subfields: (TemplateAspectRatioQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("contentId:\(GraphQL.quoteString(input: "\(contentId.rawValue)"))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = TemplateAspectRatioQuery()
			subfields(subquery)

			addField(field: "TemplateAspectRatioByContentId", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func titleAssetByContentId(aliasSuffix: String? = nil, contentId: GraphQL.ID, _ subfields: (TitleAssetQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("contentId:\(GraphQL.quoteString(input: "\(contentId.rawValue)"))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = TitleAssetQuery()
			subfields(subquery)

			addField(field: "TitleAssetByContentId", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func videoAll(aliasSuffix: String? = nil, page: Int32? = nil, pageSize: Int32? = nil, _ subfields: (VideoQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			if let page = page {
				args.append("page:\(page)")
			}

			if let pageSize = pageSize {
				args.append("pageSize:\(pageSize)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = VideoQuery()
			subfields(subquery)

			addField(field: "VideoAll", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func videoByCategory(aliasSuffix: String? = nil, category: String, page: Int32? = nil, pageSize: Int32? = nil, _ subfields: (VideoQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("category:\(GraphQL.quoteString(input: category))")

			if let page = page {
				args.append("page:\(page)")
			}

			if let pageSize = pageSize {
				args.append("pageSize:\(pageSize)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = VideoQuery()
			subfields(subquery)

			addField(field: "VideoByCategory", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func videoByContentId(aliasSuffix: String? = nil, contentId: GraphQL.ID, languages: [String]? = nil, _ subfields: (VideoQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("contentId:\(GraphQL.quoteString(input: "\(contentId.rawValue)"))")

			if let languages = languages {
				args.append("languages:[\(languages.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = VideoQuery()
			subfields(subquery)

			addField(field: "VideoByContentId", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@available(*, deprecated, message:"Use `VideoByPartnerProgramId`")
		@discardableResult
		open func videoByEpgPartnerProgramId(aliasSuffix: String? = nil, epgPartnerProgramId: String, languages: [String]? = nil, page: Int32? = nil, pageSize: Int32? = nil, _ subfields: (VideoQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("epgPartnerProgramId:\(GraphQL.quoteString(input: epgPartnerProgramId))")

			if let languages = languages {
				args.append("languages:[\(languages.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")
			}

			if let page = page {
				args.append("page:\(page)")
			}

			if let pageSize = pageSize {
				args.append("pageSize:\(pageSize)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = VideoQuery()
			subfields(subquery)

			addField(field: "VideoByEpgPartnerProgramId", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func videoByGenre(aliasSuffix: String? = nil, genre: String, languages: [String]? = nil, page: Int32? = nil, pageSize: Int32? = nil, _ subfields: (VideoQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("genre:\(GraphQL.quoteString(input: genre))")

			if let languages = languages {
				args.append("languages:[\(languages.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")
			}

			if let page = page {
				args.append("page:\(page)")
			}

			if let pageSize = pageSize {
				args.append("pageSize:\(pageSize)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = VideoQuery()
			subfields(subquery)

			addField(field: "VideoByGenre", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func videoByGroupingId(aliasSuffix: String? = nil, groupingId: String, languages: [String]? = nil, page: Int32? = nil, pageSize: Int32? = nil, _ subfields: (VideoQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("groupingId:\(GraphQL.quoteString(input: groupingId))")

			if let languages = languages {
				args.append("languages:[\(languages.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")
			}

			if let page = page {
				args.append("page:\(page)")
			}

			if let pageSize = pageSize {
				args.append("pageSize:\(pageSize)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = VideoQuery()
			subfields(subquery)

			addField(field: "VideoByGroupingId", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func videoByPartnerProgramId(aliasSuffix: String? = nil, partnerProgramId: String, languages: [String]? = nil, page: Int32? = nil, pageSize: Int32? = nil, _ subfields: (VideoQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("partnerProgramId:\(GraphQL.quoteString(input: partnerProgramId))")

			if let languages = languages {
				args.append("languages:[\(languages.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")
			}

			if let page = page {
				args.append("page:\(page)")
			}

			if let pageSize = pageSize {
				args.append("pageSize:\(pageSize)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = VideoQuery()
			subfields(subquery)

			addField(field: "VideoByPartnerProgramId", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func videoBySeasonId(aliasSuffix: String? = nil, seasonId: String, _ subfields: (VideoQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("seasonId:\(GraphQL.quoteString(input: seasonId))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = VideoQuery()
			subfields(subquery)

			addField(field: "VideoBySeasonId", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func videoBySeriesId(aliasSuffix: String? = nil, seriesId: String, _ subfields: (VideoQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("seriesId:\(GraphQL.quoteString(input: seriesId))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = VideoQuery()
			subfields(subquery)

			addField(field: "VideoBySeriesId", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func videoBySeriesSlug(aliasSuffix: String? = nil, seriesSlug: String, _ subfields: (VideoQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("seriesSlug:\(GraphQL.quoteString(input: seriesSlug))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = VideoQuery()
			subfields(subquery)

			addField(field: "VideoBySeriesSlug", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func videodetails(aliasSuffix: String? = nil, resourceKey: String, _ subfields: (VideoDetailQuery) -> Void) -> SearchQueryQuery {
			var args: [String] = []

			args.append("resourceKey:\(GraphQL.quoteString(input: resourceKey))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = VideoDetailQuery()
			subfields(subquery)

			addField(field: "videodetails", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}
	}

	open class SearchQuery: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = SearchQueryQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "query":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try QueryResponse(fields: value)

				case "prefix":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try PrefixResponse(fields: value)

				case "sitesearch":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try SitesearchResponse(fields: value)

				case "bucket":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try TopFoundHitsResponse(fields: value)

				case "bookmarks":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try MediaResponse(fields: value)

				case "watchlist":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try MediaResponse(fields: value)

				case "Airings":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try Airing(fields: value) } as [Any?]

				case "CategoryAll":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try Category(fields: value) } as [Any?]

				case "CategoryByContentId":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try Category(fields: value)

				case "CategoryBySport":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try Category(fields: value) } as [Any?]

				case "ChannelAll":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try Channel(fields: value) } as [Any?]

				case "ChannelByContentId":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try Channel(fields: value)

				case "CollectionAll":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try Collection(fields: value) } as [Any?]

				case "CollectionByContentId":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try Collection(fields: value)

				case "ConfigurationJsonByContentId":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try ConfigurationJson(fields: value)

				case "ConfigurationJsonByResourceKey":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try ConfigurationJson(fields: value)

				case "ConfigurationStructuredByContentId":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try ConfigurationStructured(fields: value)

				case "DimensionByContentId":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try Dimension(fields: value)

				case "EventPageAll":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try EventPage(fields: value) } as [Any?]

				case "EventPageByContentId":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try EventPage(fields: value)

				case "EventPageByLanguage":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try EventPage(fields: value) } as [Any?]

				case "FieldOptionByContentId":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try FieldOption(fields: value)

				case "KeyValueByContentId":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try KeyValue(fields: value)

				case "ListByContentId":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try List(fields: value)

				case "ListByTitle":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try List(fields: value)

				case "MasterCutByContentId":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try MasterCut(fields: value)

				case "Media":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try MediaList(fields: value) } as [Any?]

				case "MediaAssetByContentId":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try MediaAsset(fields: value)

				case "PageByContentId":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try Page(fields: value)

				case "PageByResourceKey":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try Page(fields: value)

				case "PhotoAssetByContentId":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try PhotoAsset(fields: value)

				case "PhotoByContentId":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try Photo(fields: value)

				case "PhotoTemplateByContentId":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try PhotoTemplate(fields: value)

				case "postplay":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try PostPlayResponse(fields: value)

				case "Schedule":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try ChannelSchedule(fields: value) } as [Any?]

				case "SeasonAll":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try Season(fields: value) } as [Any?]

				case "SeasonByContentId":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try Season(fields: value)

				case "SeasonBySeasonId":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try Season(fields: value) } as [Any?]

				case "SeasonBySeasonIdAndLanguage":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try Season(fields: value)

				case "SeasonBySeriesSlug":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try Season(fields: value) } as [Any?]

				case "SeasonContainerByContentId":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try SeasonContainer(fields: value)

				case "SectionByContentId":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try Section(fields: value)

				case "SeriesAll":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try Series(fields: value) } as [Any?]

				case "SeriesByCategory":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try Series(fields: value) } as [Any?]

				case "SeriesByContentId":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try Series(fields: value)

				case "SeriesByGenre":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try Series(fields: value) } as [Any?]

				case "SeriesBySeriesId":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try Series(fields: value) } as [Any?]

				case "SeriesBySeriesIdAndLanguage":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try Series(fields: value)

				case "SeriesBySeriesSlug":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try Series(fields: value) } as [Any?]

				case "SeriesContainerByContentId":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try SeriesContainer(fields: value)

				case "ShortContentByContentId":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try ShortContent(fields: value)

				case "TemplateAspectRatioByContentId":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try TemplateAspectRatio(fields: value)

				case "TitleAssetByContentId":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try TitleAsset(fields: value)

				case "VideoAll":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try Video(fields: value) } as [Any?]

				case "VideoByCategory":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try Video(fields: value) } as [Any?]

				case "VideoByContentId":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try Video(fields: value)

				case "VideoByEpgPartnerProgramId":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try Video(fields: value) } as [Any?]

				case "VideoByGenre":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try Video(fields: value) } as [Any?]

				case "VideoByGroupingId":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try Video(fields: value) } as [Any?]

				case "VideoByPartnerProgramId":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try Video(fields: value) } as [Any?]

				case "VideoBySeasonId":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try Video(fields: value) } as [Any?]

				case "VideoBySeriesId":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try Video(fields: value) } as [Any?]

				case "VideoBySeriesSlug":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try Video(fields: value) } as [Any?]

				case "videodetails":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
				}
				return try VideoDetail(fields: value) } as [Any?]

				default:
				throw SchemaViolationError(type: SearchQuery.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "SearchQuery" }

		open var query: BAMify.QueryResponse? {
			return internalGetQuery()
		}

		open func aliasedQuery(aliasSuffix: String) -> BAMify.QueryResponse? {
			return internalGetQuery(aliasSuffix: aliasSuffix)
		}

		func internalGetQuery(aliasSuffix: String? = nil) -> BAMify.QueryResponse? {
			return field(field: "query", aliasSuffix: aliasSuffix) as! BAMify.QueryResponse?
		}

		open var `prefix`: BAMify.PrefixResponse? {
			return internalGetPrefix()
		}

		open func aliasedPrefix(aliasSuffix: String) -> BAMify.PrefixResponse? {
			return internalGetPrefix(aliasSuffix: aliasSuffix)
		}

		func internalGetPrefix(aliasSuffix: String? = nil) -> BAMify.PrefixResponse? {
			return field(field: "prefix", aliasSuffix: aliasSuffix) as! BAMify.PrefixResponse?
		}

		open var sitesearch: BAMify.SitesearchResponse? {
			return internalGetSitesearch()
		}

		open func aliasedSitesearch(aliasSuffix: String) -> BAMify.SitesearchResponse? {
			return internalGetSitesearch(aliasSuffix: aliasSuffix)
		}

		func internalGetSitesearch(aliasSuffix: String? = nil) -> BAMify.SitesearchResponse? {
			return field(field: "sitesearch", aliasSuffix: aliasSuffix) as! BAMify.SitesearchResponse?
		}

		open var bucket: BAMify.TopFoundHitsResponse? {
			return internalGetBucket()
		}

		open func aliasedBucket(aliasSuffix: String) -> BAMify.TopFoundHitsResponse? {
			return internalGetBucket(aliasSuffix: aliasSuffix)
		}

		func internalGetBucket(aliasSuffix: String? = nil) -> BAMify.TopFoundHitsResponse? {
			return field(field: "bucket", aliasSuffix: aliasSuffix) as! BAMify.TopFoundHitsResponse?
		}

		open var bookmarks: BAMify.MediaResponse? {
			return internalGetBookmarks()
		}

		open func aliasedBookmarks(aliasSuffix: String) -> BAMify.MediaResponse? {
			return internalGetBookmarks(aliasSuffix: aliasSuffix)
		}

		func internalGetBookmarks(aliasSuffix: String? = nil) -> BAMify.MediaResponse? {
			return field(field: "bookmarks", aliasSuffix: aliasSuffix) as! BAMify.MediaResponse?
		}

		open var watchlist: BAMify.MediaResponse? {
			return internalGetWatchlist()
		}

		open func aliasedWatchlist(aliasSuffix: String) -> BAMify.MediaResponse? {
			return internalGetWatchlist(aliasSuffix: aliasSuffix)
		}

		func internalGetWatchlist(aliasSuffix: String? = nil) -> BAMify.MediaResponse? {
			return field(field: "watchlist", aliasSuffix: aliasSuffix) as! BAMify.MediaResponse?
		}

		open var airings: [BAMify.Airing?]? {
			return internalGetAirings()
		}

		open func aliasedAirings(aliasSuffix: String) -> [BAMify.Airing?]? {
			return internalGetAirings(aliasSuffix: aliasSuffix)
		}

		func internalGetAirings(aliasSuffix: String? = nil) -> [BAMify.Airing?]? {
			return field(field: "Airings", aliasSuffix: aliasSuffix) as! [BAMify.Airing?]?
		}

		open var categoryAll: [BAMify.Category?]? {
			return internalGetCategoryAll()
		}

		open func aliasedCategoryAll(aliasSuffix: String) -> [BAMify.Category?]? {
			return internalGetCategoryAll(aliasSuffix: aliasSuffix)
		}

		func internalGetCategoryAll(aliasSuffix: String? = nil) -> [BAMify.Category?]? {
			return field(field: "CategoryAll", aliasSuffix: aliasSuffix) as! [BAMify.Category?]?
		}

		open var categoryByContentId: BAMify.Category? {
			return internalGetCategoryByContentId()
		}

		open func aliasedCategoryByContentId(aliasSuffix: String) -> BAMify.Category? {
			return internalGetCategoryByContentId(aliasSuffix: aliasSuffix)
		}

		func internalGetCategoryByContentId(aliasSuffix: String? = nil) -> BAMify.Category? {
			return field(field: "CategoryByContentId", aliasSuffix: aliasSuffix) as! BAMify.Category?
		}

		open var categoryBySport: [BAMify.Category?]? {
			return internalGetCategoryBySport()
		}

		open func aliasedCategoryBySport(aliasSuffix: String) -> [BAMify.Category?]? {
			return internalGetCategoryBySport(aliasSuffix: aliasSuffix)
		}

		func internalGetCategoryBySport(aliasSuffix: String? = nil) -> [BAMify.Category?]? {
			return field(field: "CategoryBySport", aliasSuffix: aliasSuffix) as! [BAMify.Category?]?
		}

		open var channelAll: [BAMify.Channel?]? {
			return internalGetChannelAll()
		}

		open func aliasedChannelAll(aliasSuffix: String) -> [BAMify.Channel?]? {
			return internalGetChannelAll(aliasSuffix: aliasSuffix)
		}

		func internalGetChannelAll(aliasSuffix: String? = nil) -> [BAMify.Channel?]? {
			return field(field: "ChannelAll", aliasSuffix: aliasSuffix) as! [BAMify.Channel?]?
		}

		open var channelByContentId: BAMify.Channel? {
			return internalGetChannelByContentId()
		}

		open func aliasedChannelByContentId(aliasSuffix: String) -> BAMify.Channel? {
			return internalGetChannelByContentId(aliasSuffix: aliasSuffix)
		}

		func internalGetChannelByContentId(aliasSuffix: String? = nil) -> BAMify.Channel? {
			return field(field: "ChannelByContentId", aliasSuffix: aliasSuffix) as! BAMify.Channel?
		}

		open var collectionAll: [BAMify.Collection?]? {
			return internalGetCollectionAll()
		}

		func internalGetCollectionAll(aliasSuffix: String? = nil) -> [BAMify.Collection?]? {
			return field(field: "CollectionAll", aliasSuffix: aliasSuffix) as! [BAMify.Collection?]?
		}

		open var collectionByContentId: BAMify.Collection? {
			return internalGetCollectionByContentId()
		}

		open func aliasedCollectionByContentId(aliasSuffix: String) -> BAMify.Collection? {
			return internalGetCollectionByContentId(aliasSuffix: aliasSuffix)
		}

		func internalGetCollectionByContentId(aliasSuffix: String? = nil) -> BAMify.Collection? {
			return field(field: "CollectionByContentId", aliasSuffix: aliasSuffix) as! BAMify.Collection?
		}

		open var configurationJsonByContentId: BAMify.ConfigurationJson? {
			return internalGetConfigurationJsonByContentId()
		}

		open func aliasedConfigurationJsonByContentId(aliasSuffix: String) -> BAMify.ConfigurationJson? {
			return internalGetConfigurationJsonByContentId(aliasSuffix: aliasSuffix)
		}

		func internalGetConfigurationJsonByContentId(aliasSuffix: String? = nil) -> BAMify.ConfigurationJson? {
			return field(field: "ConfigurationJsonByContentId", aliasSuffix: aliasSuffix) as! BAMify.ConfigurationJson?
		}

		open var configurationJsonByResourceKey: BAMify.ConfigurationJson? {
			return internalGetConfigurationJsonByResourceKey()
		}

		open func aliasedConfigurationJsonByResourceKey(aliasSuffix: String) -> BAMify.ConfigurationJson? {
			return internalGetConfigurationJsonByResourceKey(aliasSuffix: aliasSuffix)
		}

		func internalGetConfigurationJsonByResourceKey(aliasSuffix: String? = nil) -> BAMify.ConfigurationJson? {
			return field(field: "ConfigurationJsonByResourceKey", aliasSuffix: aliasSuffix) as! BAMify.ConfigurationJson?
		}

		open var configurationStructuredByContentId: BAMify.ConfigurationStructured? {
			return internalGetConfigurationStructuredByContentId()
		}

		open func aliasedConfigurationStructuredByContentId(aliasSuffix: String) -> BAMify.ConfigurationStructured? {
			return internalGetConfigurationStructuredByContentId(aliasSuffix: aliasSuffix)
		}

		func internalGetConfigurationStructuredByContentId(aliasSuffix: String? = nil) -> BAMify.ConfigurationStructured? {
			return field(field: "ConfigurationStructuredByContentId", aliasSuffix: aliasSuffix) as! BAMify.ConfigurationStructured?
		}

		open var dimensionByContentId: BAMify.Dimension? {
			return internalGetDimensionByContentId()
		}

		open func aliasedDimensionByContentId(aliasSuffix: String) -> BAMify.Dimension? {
			return internalGetDimensionByContentId(aliasSuffix: aliasSuffix)
		}

		func internalGetDimensionByContentId(aliasSuffix: String? = nil) -> BAMify.Dimension? {
			return field(field: "DimensionByContentId", aliasSuffix: aliasSuffix) as! BAMify.Dimension?
		}

		open var eventPageAll: [BAMify.EventPage?]? {
			return internalGetEventPageAll()
		}

		open func aliasedEventPageAll(aliasSuffix: String) -> [BAMify.EventPage?]? {
			return internalGetEventPageAll(aliasSuffix: aliasSuffix)
		}

		func internalGetEventPageAll(aliasSuffix: String? = nil) -> [BAMify.EventPage?]? {
			return field(field: "EventPageAll", aliasSuffix: aliasSuffix) as! [BAMify.EventPage?]?
		}

		open var eventPageByContentId: BAMify.EventPage? {
			return internalGetEventPageByContentId()
		}

		open func aliasedEventPageByContentId(aliasSuffix: String) -> BAMify.EventPage? {
			return internalGetEventPageByContentId(aliasSuffix: aliasSuffix)
		}

		func internalGetEventPageByContentId(aliasSuffix: String? = nil) -> BAMify.EventPage? {
			return field(field: "EventPageByContentId", aliasSuffix: aliasSuffix) as! BAMify.EventPage?
		}

		@available(*, deprecated, message:"Use `EventPageAll`")
		open var eventPageByLanguage: [BAMify.EventPage?]? {
			return internalGetEventPageByLanguage()
		}

		@available(*, deprecated, message:"Use `EventPageAll`")
		open func aliasedEventPageByLanguage(aliasSuffix: String) -> [BAMify.EventPage?]? {
			return internalGetEventPageByLanguage(aliasSuffix: aliasSuffix)
		}

		func internalGetEventPageByLanguage(aliasSuffix: String? = nil) -> [BAMify.EventPage?]? {
			return field(field: "EventPageByLanguage", aliasSuffix: aliasSuffix) as! [BAMify.EventPage?]?
		}

		open var fieldOptionByContentId: BAMify.FieldOption? {
			return internalGetFieldOptionByContentId()
		}

		open func aliasedFieldOptionByContentId(aliasSuffix: String) -> BAMify.FieldOption? {
			return internalGetFieldOptionByContentId(aliasSuffix: aliasSuffix)
		}

		func internalGetFieldOptionByContentId(aliasSuffix: String? = nil) -> BAMify.FieldOption? {
			return field(field: "FieldOptionByContentId", aliasSuffix: aliasSuffix) as! BAMify.FieldOption?
		}

		open var keyValueByContentId: BAMify.KeyValue? {
			return internalGetKeyValueByContentId()
		}

		open func aliasedKeyValueByContentId(aliasSuffix: String) -> BAMify.KeyValue? {
			return internalGetKeyValueByContentId(aliasSuffix: aliasSuffix)
		}

		func internalGetKeyValueByContentId(aliasSuffix: String? = nil) -> BAMify.KeyValue? {
			return field(field: "KeyValueByContentId", aliasSuffix: aliasSuffix) as! BAMify.KeyValue?
		}

		open var listByContentId: BAMify.List? {
			return internalGetListByContentId()
		}

		open func aliasedListByContentId(aliasSuffix: String) -> BAMify.List? {
			return internalGetListByContentId(aliasSuffix: aliasSuffix)
		}

		func internalGetListByContentId(aliasSuffix: String? = nil) -> BAMify.List? {
			return field(field: "ListByContentId", aliasSuffix: aliasSuffix) as! BAMify.List?
		}

		open var listByTitle: BAMify.List? {
			return internalGetListByTitle()
		}

		open func aliasedListByTitle(aliasSuffix: String) -> BAMify.List? {
			return internalGetListByTitle(aliasSuffix: aliasSuffix)
		}

		func internalGetListByTitle(aliasSuffix: String? = nil) -> BAMify.List? {
			return field(field: "ListByTitle", aliasSuffix: aliasSuffix) as! BAMify.List?
		}

		open var masterCutByContentId: BAMify.MasterCut? {
			return internalGetMasterCutByContentId()
		}

		open func aliasedMasterCutByContentId(aliasSuffix: String) -> BAMify.MasterCut? {
			return internalGetMasterCutByContentId(aliasSuffix: aliasSuffix)
		}

		func internalGetMasterCutByContentId(aliasSuffix: String? = nil) -> BAMify.MasterCut? {
			return field(field: "MasterCutByContentId", aliasSuffix: aliasSuffix) as! BAMify.MasterCut?
		}

		open var media: [BAMify.MediaList?]? {
			return internalGetMedia()
		}

		open func aliasedMedia(aliasSuffix: String) -> [BAMify.MediaList?]? {
			return internalGetMedia(aliasSuffix: aliasSuffix)
		}

		func internalGetMedia(aliasSuffix: String? = nil) -> [BAMify.MediaList?]? {
			return field(field: "Media", aliasSuffix: aliasSuffix) as! [BAMify.MediaList?]?
		}

		open var mediaAssetByContentId: BAMify.MediaAsset? {
			return internalGetMediaAssetByContentId()
		}

		open func aliasedMediaAssetByContentId(aliasSuffix: String) -> BAMify.MediaAsset? {
			return internalGetMediaAssetByContentId(aliasSuffix: aliasSuffix)
		}

		func internalGetMediaAssetByContentId(aliasSuffix: String? = nil) -> BAMify.MediaAsset? {
			return field(field: "MediaAssetByContentId", aliasSuffix: aliasSuffix) as! BAMify.MediaAsset?
		}

		open var pageByContentId: BAMify.Page? {
			return internalGetPageByContentId()
		}

		open func aliasedPageByContentId(aliasSuffix: String) -> BAMify.Page? {
			return internalGetPageByContentId(aliasSuffix: aliasSuffix)
		}

		func internalGetPageByContentId(aliasSuffix: String? = nil) -> BAMify.Page? {
			return field(field: "PageByContentId", aliasSuffix: aliasSuffix) as! BAMify.Page?
		}

		open var pageByResourceKey: BAMify.Page? {
			return internalGetPageByResourceKey()
		}

		open func aliasedPageByResourceKey(aliasSuffix: String) -> BAMify.Page? {
			return internalGetPageByResourceKey(aliasSuffix: aliasSuffix)
		}

		func internalGetPageByResourceKey(aliasSuffix: String? = nil) -> BAMify.Page? {
			return field(field: "PageByResourceKey", aliasSuffix: aliasSuffix) as! BAMify.Page?
		}

		open var photoAssetByContentId: BAMify.PhotoAsset? {
			return internalGetPhotoAssetByContentId()
		}

		open func aliasedPhotoAssetByContentId(aliasSuffix: String) -> BAMify.PhotoAsset? {
			return internalGetPhotoAssetByContentId(aliasSuffix: aliasSuffix)
		}

		func internalGetPhotoAssetByContentId(aliasSuffix: String? = nil) -> BAMify.PhotoAsset? {
			return field(field: "PhotoAssetByContentId", aliasSuffix: aliasSuffix) as! BAMify.PhotoAsset?
		}

		open var photoByContentId: BAMify.Photo? {
			return internalGetPhotoByContentId()
		}

		open func aliasedPhotoByContentId(aliasSuffix: String) -> BAMify.Photo? {
			return internalGetPhotoByContentId(aliasSuffix: aliasSuffix)
		}

		func internalGetPhotoByContentId(aliasSuffix: String? = nil) -> BAMify.Photo? {
			return field(field: "PhotoByContentId", aliasSuffix: aliasSuffix) as! BAMify.Photo?
		}

		open var photoTemplateByContentId: BAMify.PhotoTemplate? {
			return internalGetPhotoTemplateByContentId()
		}

		open func aliasedPhotoTemplateByContentId(aliasSuffix: String) -> BAMify.PhotoTemplate? {
			return internalGetPhotoTemplateByContentId(aliasSuffix: aliasSuffix)
		}

		func internalGetPhotoTemplateByContentId(aliasSuffix: String? = nil) -> BAMify.PhotoTemplate? {
			return field(field: "PhotoTemplateByContentId", aliasSuffix: aliasSuffix) as! BAMify.PhotoTemplate?
		}

		open var postplay: BAMify.PostPlayResponse? {
			return internalGetPostplay()
		}

		open func aliasedPostplay(aliasSuffix: String) -> BAMify.PostPlayResponse? {
			return internalGetPostplay(aliasSuffix: aliasSuffix)
		}

		func internalGetPostplay(aliasSuffix: String? = nil) -> BAMify.PostPlayResponse? {
			return field(field: "postplay", aliasSuffix: aliasSuffix) as! BAMify.PostPlayResponse?
		}

		open var schedule: [BAMify.ChannelSchedule?]? {
			return internalGetSchedule()
		}

		open func aliasedSchedule(aliasSuffix: String) -> [BAMify.ChannelSchedule?]? {
			return internalGetSchedule(aliasSuffix: aliasSuffix)
		}

		func internalGetSchedule(aliasSuffix: String? = nil) -> [BAMify.ChannelSchedule?]? {
			return field(field: "Schedule", aliasSuffix: aliasSuffix) as! [BAMify.ChannelSchedule?]?
		}

		open var seasonAll: [BAMify.Season?]? {
			return internalGetSeasonAll()
		}

		func internalGetSeasonAll(aliasSuffix: String? = nil) -> [BAMify.Season?]? {
			return field(field: "SeasonAll", aliasSuffix: aliasSuffix) as! [BAMify.Season?]?
		}

		open var seasonByContentId: BAMify.Season? {
			return internalGetSeasonByContentId()
		}

		open func aliasedSeasonByContentId(aliasSuffix: String) -> BAMify.Season? {
			return internalGetSeasonByContentId(aliasSuffix: aliasSuffix)
		}

		func internalGetSeasonByContentId(aliasSuffix: String? = nil) -> BAMify.Season? {
			return field(field: "SeasonByContentId", aliasSuffix: aliasSuffix) as! BAMify.Season?
		}

		open var seasonBySeasonId: [BAMify.Season?]? {
			return internalGetSeasonBySeasonId()
		}

		open func aliasedSeasonBySeasonId(aliasSuffix: String) -> [BAMify.Season?]? {
			return internalGetSeasonBySeasonId(aliasSuffix: aliasSuffix)
		}

		func internalGetSeasonBySeasonId(aliasSuffix: String? = nil) -> [BAMify.Season?]? {
			return field(field: "SeasonBySeasonId", aliasSuffix: aliasSuffix) as! [BAMify.Season?]?
		}

		@available(*, deprecated, message:"Use `SeasonBySeasonId`")
		open var seasonBySeasonIdAndLanguage: BAMify.Season? {
			return internalGetSeasonBySeasonIdAndLanguage()
		}

		@available(*, deprecated, message:"Use `SeasonBySeasonId`")
		open func aliasedSeasonBySeasonIdAndLanguage(aliasSuffix: String) -> BAMify.Season? {
			return internalGetSeasonBySeasonIdAndLanguage(aliasSuffix: aliasSuffix)
		}

		func internalGetSeasonBySeasonIdAndLanguage(aliasSuffix: String? = nil) -> BAMify.Season? {
			return field(field: "SeasonBySeasonIdAndLanguage", aliasSuffix: aliasSuffix) as! BAMify.Season?
		}

		open var seasonBySeriesSlug: [BAMify.Season?]? {
			return internalGetSeasonBySeriesSlug()
		}

		open func aliasedSeasonBySeriesSlug(aliasSuffix: String) -> [BAMify.Season?]? {
			return internalGetSeasonBySeriesSlug(aliasSuffix: aliasSuffix)
		}

		func internalGetSeasonBySeriesSlug(aliasSuffix: String? = nil) -> [BAMify.Season?]? {
			return field(field: "SeasonBySeriesSlug", aliasSuffix: aliasSuffix) as! [BAMify.Season?]?
		}

		open var seasonContainerByContentId: BAMify.SeasonContainer? {
			return internalGetSeasonContainerByContentId()
		}

		open func aliasedSeasonContainerByContentId(aliasSuffix: String) -> BAMify.SeasonContainer? {
			return internalGetSeasonContainerByContentId(aliasSuffix: aliasSuffix)
		}

		func internalGetSeasonContainerByContentId(aliasSuffix: String? = nil) -> BAMify.SeasonContainer? {
			return field(field: "SeasonContainerByContentId", aliasSuffix: aliasSuffix) as! BAMify.SeasonContainer?
		}

		open var sectionByContentId: BAMify.Section? {
			return internalGetSectionByContentId()
		}

		open func aliasedSectionByContentId(aliasSuffix: String) -> BAMify.Section? {
			return internalGetSectionByContentId(aliasSuffix: aliasSuffix)
		}

		func internalGetSectionByContentId(aliasSuffix: String? = nil) -> BAMify.Section? {
			return field(field: "SectionByContentId", aliasSuffix: aliasSuffix) as! BAMify.Section?
		}

		open var seriesAll: [BAMify.Series?]? {
			return internalGetSeriesAll()
		}

		func internalGetSeriesAll(aliasSuffix: String? = nil) -> [BAMify.Series?]? {
			return field(field: "SeriesAll", aliasSuffix: aliasSuffix) as! [BAMify.Series?]?
		}

		open var seriesByCategory: [BAMify.Series?]? {
			return internalGetSeriesByCategory()
		}

		open func aliasedSeriesByCategory(aliasSuffix: String) -> [BAMify.Series?]? {
			return internalGetSeriesByCategory(aliasSuffix: aliasSuffix)
		}

		func internalGetSeriesByCategory(aliasSuffix: String? = nil) -> [BAMify.Series?]? {
			return field(field: "SeriesByCategory", aliasSuffix: aliasSuffix) as! [BAMify.Series?]?
		}

		open var seriesByContentId: BAMify.Series? {
			return internalGetSeriesByContentId()
		}

		open func aliasedSeriesByContentId(aliasSuffix: String) -> BAMify.Series? {
			return internalGetSeriesByContentId(aliasSuffix: aliasSuffix)
		}

		func internalGetSeriesByContentId(aliasSuffix: String? = nil) -> BAMify.Series? {
			return field(field: "SeriesByContentId", aliasSuffix: aliasSuffix) as! BAMify.Series?
		}

		open var seriesByGenre: [BAMify.Series?]? {
			return internalGetSeriesByGenre()
		}

		open func aliasedSeriesByGenre(aliasSuffix: String) -> [BAMify.Series?]? {
			return internalGetSeriesByGenre(aliasSuffix: aliasSuffix)
		}

		func internalGetSeriesByGenre(aliasSuffix: String? = nil) -> [BAMify.Series?]? {
			return field(field: "SeriesByGenre", aliasSuffix: aliasSuffix) as! [BAMify.Series?]?
		}

		open var seriesBySeriesId: [BAMify.Series?]? {
			return internalGetSeriesBySeriesId()
		}

		open func aliasedSeriesBySeriesId(aliasSuffix: String) -> [BAMify.Series?]? {
			return internalGetSeriesBySeriesId(aliasSuffix: aliasSuffix)
		}

		func internalGetSeriesBySeriesId(aliasSuffix: String? = nil) -> [BAMify.Series?]? {
			return field(field: "SeriesBySeriesId", aliasSuffix: aliasSuffix) as! [BAMify.Series?]?
		}

		@available(*, deprecated, message:"Use `SeriesBySeriesId`")
		open var seriesBySeriesIdAndLanguage: BAMify.Series? {
			return internalGetSeriesBySeriesIdAndLanguage()
		}

		@available(*, deprecated, message:"Use `SeriesBySeriesId`")
		open func aliasedSeriesBySeriesIdAndLanguage(aliasSuffix: String) -> BAMify.Series? {
			return internalGetSeriesBySeriesIdAndLanguage(aliasSuffix: aliasSuffix)
		}

		func internalGetSeriesBySeriesIdAndLanguage(aliasSuffix: String? = nil) -> BAMify.Series? {
			return field(field: "SeriesBySeriesIdAndLanguage", aliasSuffix: aliasSuffix) as! BAMify.Series?
		}

		open var seriesBySeriesSlug: [BAMify.Series?]? {
			return internalGetSeriesBySeriesSlug()
		}

		open func aliasedSeriesBySeriesSlug(aliasSuffix: String) -> [BAMify.Series?]? {
			return internalGetSeriesBySeriesSlug(aliasSuffix: aliasSuffix)
		}

		func internalGetSeriesBySeriesSlug(aliasSuffix: String? = nil) -> [BAMify.Series?]? {
			return field(field: "SeriesBySeriesSlug", aliasSuffix: aliasSuffix) as! [BAMify.Series?]?
		}

		open var seriesContainerByContentId: BAMify.SeriesContainer? {
			return internalGetSeriesContainerByContentId()
		}

		open func aliasedSeriesContainerByContentId(aliasSuffix: String) -> BAMify.SeriesContainer? {
			return internalGetSeriesContainerByContentId(aliasSuffix: aliasSuffix)
		}

		func internalGetSeriesContainerByContentId(aliasSuffix: String? = nil) -> BAMify.SeriesContainer? {
			return field(field: "SeriesContainerByContentId", aliasSuffix: aliasSuffix) as! BAMify.SeriesContainer?
		}

		open var shortContentByContentId: BAMify.ShortContent? {
			return internalGetShortContentByContentId()
		}

		open func aliasedShortContentByContentId(aliasSuffix: String) -> BAMify.ShortContent? {
			return internalGetShortContentByContentId(aliasSuffix: aliasSuffix)
		}

		func internalGetShortContentByContentId(aliasSuffix: String? = nil) -> BAMify.ShortContent? {
			return field(field: "ShortContentByContentId", aliasSuffix: aliasSuffix) as! BAMify.ShortContent?
		}

		open var templateAspectRatioByContentId: BAMify.TemplateAspectRatio? {
			return internalGetTemplateAspectRatioByContentId()
		}

		open func aliasedTemplateAspectRatioByContentId(aliasSuffix: String) -> BAMify.TemplateAspectRatio? {
			return internalGetTemplateAspectRatioByContentId(aliasSuffix: aliasSuffix)
		}

		func internalGetTemplateAspectRatioByContentId(aliasSuffix: String? = nil) -> BAMify.TemplateAspectRatio? {
			return field(field: "TemplateAspectRatioByContentId", aliasSuffix: aliasSuffix) as! BAMify.TemplateAspectRatio?
		}

		open var titleAssetByContentId: BAMify.TitleAsset? {
			return internalGetTitleAssetByContentId()
		}

		open func aliasedTitleAssetByContentId(aliasSuffix: String) -> BAMify.TitleAsset? {
			return internalGetTitleAssetByContentId(aliasSuffix: aliasSuffix)
		}

		func internalGetTitleAssetByContentId(aliasSuffix: String? = nil) -> BAMify.TitleAsset? {
			return field(field: "TitleAssetByContentId", aliasSuffix: aliasSuffix) as! BAMify.TitleAsset?
		}

		open var videoAll: [BAMify.Video?]? {
			return internalGetVideoAll()
		}

		open func aliasedVideoAll(aliasSuffix: String) -> [BAMify.Video?]? {
			return internalGetVideoAll(aliasSuffix: aliasSuffix)
		}

		func internalGetVideoAll(aliasSuffix: String? = nil) -> [BAMify.Video?]? {
			return field(field: "VideoAll", aliasSuffix: aliasSuffix) as! [BAMify.Video?]?
		}

		open var videoByCategory: [BAMify.Video?]? {
			return internalGetVideoByCategory()
		}

		open func aliasedVideoByCategory(aliasSuffix: String) -> [BAMify.Video?]? {
			return internalGetVideoByCategory(aliasSuffix: aliasSuffix)
		}

		func internalGetVideoByCategory(aliasSuffix: String? = nil) -> [BAMify.Video?]? {
			return field(field: "VideoByCategory", aliasSuffix: aliasSuffix) as! [BAMify.Video?]?
		}

		open var videoByContentId: BAMify.Video? {
			return internalGetVideoByContentId()
		}

		open func aliasedVideoByContentId(aliasSuffix: String) -> BAMify.Video? {
			return internalGetVideoByContentId(aliasSuffix: aliasSuffix)
		}

		func internalGetVideoByContentId(aliasSuffix: String? = nil) -> BAMify.Video? {
			return field(field: "VideoByContentId", aliasSuffix: aliasSuffix) as! BAMify.Video?
		}

		@available(*, deprecated, message:"Use `VideoByPartnerProgramId`")
		open var videoByEpgPartnerProgramId: [BAMify.Video?]? {
			return internalGetVideoByEpgPartnerProgramId()
		}

		@available(*, deprecated, message:"Use `VideoByPartnerProgramId`")
		open func aliasedVideoByEpgPartnerProgramId(aliasSuffix: String) -> [BAMify.Video?]? {
			return internalGetVideoByEpgPartnerProgramId(aliasSuffix: aliasSuffix)
		}

		func internalGetVideoByEpgPartnerProgramId(aliasSuffix: String? = nil) -> [BAMify.Video?]? {
			return field(field: "VideoByEpgPartnerProgramId", aliasSuffix: aliasSuffix) as! [BAMify.Video?]?
		}

		open var videoByGenre: [BAMify.Video?]? {
			return internalGetVideoByGenre()
		}

		open func aliasedVideoByGenre(aliasSuffix: String) -> [BAMify.Video?]? {
			return internalGetVideoByGenre(aliasSuffix: aliasSuffix)
		}

		func internalGetVideoByGenre(aliasSuffix: String? = nil) -> [BAMify.Video?]? {
			return field(field: "VideoByGenre", aliasSuffix: aliasSuffix) as! [BAMify.Video?]?
		}

		open var videoByGroupingId: [BAMify.Video?]? {
			return internalGetVideoByGroupingId()
		}

		open func aliasedVideoByGroupingId(aliasSuffix: String) -> [BAMify.Video?]? {
			return internalGetVideoByGroupingId(aliasSuffix: aliasSuffix)
		}

		func internalGetVideoByGroupingId(aliasSuffix: String? = nil) -> [BAMify.Video?]? {
			return field(field: "VideoByGroupingId", aliasSuffix: aliasSuffix) as! [BAMify.Video?]?
		}

		open var videoByPartnerProgramId: [BAMify.Video?]? {
			return internalGetVideoByPartnerProgramId()
		}

		open func aliasedVideoByPartnerProgramId(aliasSuffix: String) -> [BAMify.Video?]? {
			return internalGetVideoByPartnerProgramId(aliasSuffix: aliasSuffix)
		}

		func internalGetVideoByPartnerProgramId(aliasSuffix: String? = nil) -> [BAMify.Video?]? {
			return field(field: "VideoByPartnerProgramId", aliasSuffix: aliasSuffix) as! [BAMify.Video?]?
		}

		open var videoBySeasonId: [BAMify.Video?]? {
			return internalGetVideoBySeasonId()
		}

		open func aliasedVideoBySeasonId(aliasSuffix: String) -> [BAMify.Video?]? {
			return internalGetVideoBySeasonId(aliasSuffix: aliasSuffix)
		}

		func internalGetVideoBySeasonId(aliasSuffix: String? = nil) -> [BAMify.Video?]? {
			return field(field: "VideoBySeasonId", aliasSuffix: aliasSuffix) as! [BAMify.Video?]?
		}

		open var videoBySeriesId: [BAMify.Video?]? {
			return internalGetVideoBySeriesId()
		}

		open func aliasedVideoBySeriesId(aliasSuffix: String) -> [BAMify.Video?]? {
			return internalGetVideoBySeriesId(aliasSuffix: aliasSuffix)
		}

		func internalGetVideoBySeriesId(aliasSuffix: String? = nil) -> [BAMify.Video?]? {
			return field(field: "VideoBySeriesId", aliasSuffix: aliasSuffix) as! [BAMify.Video?]?
		}

		open var videoBySeriesSlug: [BAMify.Video?]? {
			return internalGetVideoBySeriesSlug()
		}

		open func aliasedVideoBySeriesSlug(aliasSuffix: String) -> [BAMify.Video?]? {
			return internalGetVideoBySeriesSlug(aliasSuffix: aliasSuffix)
		}

		func internalGetVideoBySeriesSlug(aliasSuffix: String? = nil) -> [BAMify.Video?]? {
			return field(field: "VideoBySeriesSlug", aliasSuffix: aliasSuffix) as! [BAMify.Video?]?
		}

		open var videodetails: [BAMify.VideoDetail?]? {
			return internalGetVideodetails()
		}

		open func aliasedVideodetails(aliasSuffix: String) -> [BAMify.VideoDetail?]? {
			return internalGetVideodetails(aliasSuffix: aliasSuffix)
		}

		func internalGetVideodetails(aliasSuffix: String? = nil) -> [BAMify.VideoDetail?]? {
			return field(field: "videodetails", aliasSuffix: aliasSuffix) as! [BAMify.VideoDetail?]?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "query":

				return .object

				case "prefix":

				return .object

				case "sitesearch":

				return .object

				case "bucket":

				return .object

				case "bookmarks":

				return .object

				case "watchlist":

				return .object

				case "Airings":

				return .objectList

				case "CategoryAll":

				return .objectList

				case "CategoryByContentId":

				return .object

				case "CategoryBySport":

				return .objectList

				case "ChannelAll":

				return .objectList

				case "ChannelByContentId":

				return .object

				case "CollectionAll":

				return .objectList

				case "CollectionByContentId":

				return .object

				case "ConfigurationJsonByContentId":

				return .object

				case "ConfigurationJsonByResourceKey":

				return .object

				case "ConfigurationStructuredByContentId":

				return .object

				case "DimensionByContentId":

				return .object

				case "EventPageAll":

				return .objectList

				case "EventPageByContentId":

				return .object

				case "EventPageByLanguage":

				return .objectList

				case "FieldOptionByContentId":

				return .object

				case "KeyValueByContentId":

				return .object

				case "ListByContentId":

				return .object

				case "ListByTitle":

				return .object

				case "MasterCutByContentId":

				return .object

				case "Media":

				return .objectList

				case "MediaAssetByContentId":

				return .object

				case "PageByContentId":

				return .object

				case "PageByResourceKey":

				return .object

				case "PhotoAssetByContentId":

				return .object

				case "PhotoByContentId":

				return .object

				case "PhotoTemplateByContentId":

				return .object

				case "postplay":

				return .object

				case "Schedule":

				return .objectList

				case "SeasonAll":

				return .objectList

				case "SeasonByContentId":

				return .object

				case "SeasonBySeasonId":

				return .objectList

				case "SeasonBySeasonIdAndLanguage":

				return .object

				case "SeasonBySeriesSlug":

				return .objectList

				case "SeasonContainerByContentId":

				return .object

				case "SectionByContentId":

				return .object

				case "SeriesAll":

				return .objectList

				case "SeriesByCategory":

				return .objectList

				case "SeriesByContentId":

				return .object

				case "SeriesByGenre":

				return .objectList

				case "SeriesBySeriesId":

				return .objectList

				case "SeriesBySeriesIdAndLanguage":

				return .object

				case "SeriesBySeriesSlug":

				return .objectList

				case "SeriesContainerByContentId":

				return .object

				case "ShortContentByContentId":

				return .object

				case "TemplateAspectRatioByContentId":

				return .object

				case "TitleAssetByContentId":

				return .object

				case "VideoAll":

				return .objectList

				case "VideoByCategory":

				return .objectList

				case "VideoByContentId":

				return .object

				case "VideoByEpgPartnerProgramId":

				return .objectList

				case "VideoByGenre":

				return .objectList

				case "VideoByGroupingId":

				return .objectList

				case "VideoByPartnerProgramId":

				return .objectList

				case "VideoBySeasonId":

				return .objectList

				case "VideoBySeriesId":

				return .objectList

				case "VideoBySeriesSlug":

				return .objectList

				case "videodetails":

				return .objectList

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "query":
				return internalGetQuery()

				case "prefix":
				return internalGetPrefix()

				case "sitesearch":
				return internalGetSitesearch()

				case "bucket":
				return internalGetBucket()

				case "bookmarks":
				return internalGetBookmarks()

				case "watchlist":
				return internalGetWatchlist()

				case "CategoryByContentId":
				return internalGetCategoryByContentId()

				case "ChannelByContentId":
				return internalGetChannelByContentId()

				case "CollectionByContentId":
				return internalGetCollectionByContentId()

				case "ConfigurationJsonByContentId":
				return internalGetConfigurationJsonByContentId()

				case "ConfigurationJsonByResourceKey":
				return internalGetConfigurationJsonByResourceKey()

				case "ConfigurationStructuredByContentId":
				return internalGetConfigurationStructuredByContentId()

				case "DimensionByContentId":
				return internalGetDimensionByContentId()

				case "EventPageByContentId":
				return internalGetEventPageByContentId()

				case "FieldOptionByContentId":
				return internalGetFieldOptionByContentId()

				case "KeyValueByContentId":
				return internalGetKeyValueByContentId()

				case "ListByContentId":
				return internalGetListByContentId()

				case "ListByTitle":
				return internalGetListByTitle()

				case "MasterCutByContentId":
				return internalGetMasterCutByContentId()

				case "MediaAssetByContentId":
				return internalGetMediaAssetByContentId()

				case "PageByContentId":
				return internalGetPageByContentId()

				case "PageByResourceKey":
				return internalGetPageByResourceKey()

				case "PhotoAssetByContentId":
				return internalGetPhotoAssetByContentId()

				case "PhotoByContentId":
				return internalGetPhotoByContentId()

				case "PhotoTemplateByContentId":
				return internalGetPhotoTemplateByContentId()

				case "postplay":
				return internalGetPostplay()

				case "SeasonByContentId":
				return internalGetSeasonByContentId()

				case "SeasonBySeasonIdAndLanguage":
				return internalGetSeasonBySeasonIdAndLanguage()

				case "SeasonContainerByContentId":
				return internalGetSeasonContainerByContentId()

				case "SectionByContentId":
				return internalGetSectionByContentId()

				case "SeriesByContentId":
				return internalGetSeriesByContentId()

				case "SeriesBySeriesIdAndLanguage":
				return internalGetSeriesBySeriesIdAndLanguage()

				case "SeriesContainerByContentId":
				return internalGetSeriesContainerByContentId()

				case "ShortContentByContentId":
				return internalGetShortContentByContentId()

				case "TemplateAspectRatioByContentId":
				return internalGetTemplateAspectRatioByContentId()

				case "TitleAssetByContentId":
				return internalGetTitleAssetByContentId()

				case "VideoByContentId":
				return internalGetVideoByContentId()

				default:
				break
			}
			return nil
		}

		override open func fetchChildObjectList(key: String) -> [GraphQL.AbstractResponse] {
			switch(key) {
				case "Airings":
				return internalGetAirings() as? [GraphQL.AbstractResponse]   ?? []

				case "CategoryAll":
				return internalGetCategoryAll() as? [GraphQL.AbstractResponse]   ?? []

				case "CategoryBySport":
				return internalGetCategoryBySport() as? [GraphQL.AbstractResponse]   ?? []

				case "ChannelAll":
				return internalGetChannelAll() as? [GraphQL.AbstractResponse]   ?? []

				case "CollectionAll":
				return internalGetCollectionAll() as? [GraphQL.AbstractResponse]   ?? []

				case "EventPageAll":
				return internalGetEventPageAll() as? [GraphQL.AbstractResponse]   ?? []

				case "EventPageByLanguage":
				return internalGetEventPageByLanguage() as? [GraphQL.AbstractResponse]   ?? []

				case "Media":
				return internalGetMedia() as? [GraphQL.AbstractResponse]   ?? []

				case "Schedule":
				return internalGetSchedule()  as? [GraphQL.AbstractResponse]  ?? []

				case "SeasonAll":
				return internalGetSeasonAll()  as? [GraphQL.AbstractResponse]  ?? []

				case "SeasonBySeasonId":
				return internalGetSeasonBySeasonId()  as? [GraphQL.AbstractResponse]  ?? []

				case "SeasonBySeriesSlug":
				return internalGetSeasonBySeriesSlug() as? [GraphQL.AbstractResponse]  ?? []

				case "SeriesAll":
				return internalGetSeriesAll() as? [GraphQL.AbstractResponse]   ?? []

				case "SeriesByCategory":
				return internalGetSeriesByCategory()  as? [GraphQL.AbstractResponse]   ?? []

				case "SeriesByGenre":
				return internalGetSeriesByGenre()  as? [GraphQL.AbstractResponse] ?? []

				case "SeriesBySeriesId":
				return internalGetSeriesBySeriesId()  as? [GraphQL.AbstractResponse] ?? []

				case "SeriesBySeriesSlug":
				return internalGetSeriesBySeriesSlug()  as? [GraphQL.AbstractResponse] ?? []

				case "VideoAll":
				return internalGetVideoAll()  as? [GraphQL.AbstractResponse] ?? []

				case "VideoByCategory":
				return internalGetVideoByCategory()  as? [GraphQL.AbstractResponse] ?? []

				case "VideoByEpgPartnerProgramId":
				return internalGetVideoByEpgPartnerProgramId()  as? [GraphQL.AbstractResponse] ?? []

				case "VideoByGenre":
				return internalGetVideoByGenre()  as? [GraphQL.AbstractResponse] ?? []

				case "VideoByGroupingId":
				return internalGetVideoByGroupingId()  as? [GraphQL.AbstractResponse] ?? []

				case "VideoByPartnerProgramId":
				return internalGetVideoByPartnerProgramId() as? [GraphQL.AbstractResponse]  ?? []

				case "VideoBySeasonId":
				return internalGetVideoBySeasonId()  as? [GraphQL.AbstractResponse] ?? []

				case "VideoBySeriesId":
				return internalGetVideoBySeriesId() as? [GraphQL.AbstractResponse]  ?? []

				case "VideoBySeriesSlug":
				return internalGetVideoBySeriesSlug()  as? [GraphQL.AbstractResponse] ?? []

				case "videodetails":
				return internalGetVideodetails()  as? [GraphQL.AbstractResponse] ?? []

				default:
				return []
			}
		}

		open func childResponseObjectMap() -> [GraphQL.AbstractResponse]  {
			var response: [GraphQL.AbstractResponse] = []
			objectMap.keys.forEach({
				key in
				switch(key) {
					case "query":
					if let value = internalGetQuery() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "prefix":
					if let value = internalGetPrefix() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "sitesearch":
					if let value = internalGetSitesearch() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "bucket":
					if let value = internalGetBucket() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "bookmarks":
					if let value = internalGetBookmarks() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "watchlist":
					if let value = internalGetWatchlist() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "Airings":
					if let value = internalGetAirings() {
						value.forEach {
							if let value = $0 {
								response.append(value)
								response.append(contentsOf: value.childResponseObjectMap())
							}
						}
					}

					case "CategoryAll":
					if let value = internalGetCategoryAll() {
						value.forEach {
							if let value = $0 {
								response.append(value)
								response.append(contentsOf: value.childResponseObjectMap())
							}
						}
					}

					case "CategoryByContentId":
					if let value = internalGetCategoryByContentId() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "CategoryBySport":
					if let value = internalGetCategoryBySport() {
						value.forEach {
							if let value = $0 {
								response.append(value)
								response.append(contentsOf: value.childResponseObjectMap())
							}
						}
					}

					case "ChannelAll":
					if let value = internalGetChannelAll() {
						value.forEach {
							if let value = $0 {
								response.append(value)
								response.append(contentsOf: value.childResponseObjectMap())
							}
						}
					}

					case "ChannelByContentId":
					if let value = internalGetChannelByContentId() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "CollectionAll":
					if let value = internalGetCollectionAll() {
						value.forEach {
							if let value = $0 {
								response.append(value)
								response.append(contentsOf: value.childResponseObjectMap())
							}
						}
					}

					case "CollectionByContentId":
					if let value = internalGetCollectionByContentId() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "ConfigurationJsonByContentId":
					if let value = internalGetConfigurationJsonByContentId() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "ConfigurationJsonByResourceKey":
					if let value = internalGetConfigurationJsonByResourceKey() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "ConfigurationStructuredByContentId":
					if let value = internalGetConfigurationStructuredByContentId() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "DimensionByContentId":
					if let value = internalGetDimensionByContentId() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "EventPageAll":
					if let value = internalGetEventPageAll() {
						value.forEach {
							if let value = $0 {
								response.append(value)
								response.append(contentsOf: value.childResponseObjectMap())
							}
						}
					}

					case "EventPageByContentId":
					if let value = internalGetEventPageByContentId() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "EventPageByLanguage":
					if let value = internalGetEventPageByLanguage() {
						value.forEach {
							if let value = $0 {
								response.append(value)
								response.append(contentsOf: value.childResponseObjectMap())
							}
						}
					}

					case "FieldOptionByContentId":
					if let value = internalGetFieldOptionByContentId() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "KeyValueByContentId":
					if let value = internalGetKeyValueByContentId() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "ListByContentId":
					if let value = internalGetListByContentId() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "ListByTitle":
					if let value = internalGetListByTitle() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "MasterCutByContentId":
					if let value = internalGetMasterCutByContentId() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "Media":
					if let value = internalGetMedia() {
						value.forEach {
							if let value = $0 {
								response.append(value)
								response.append(contentsOf: value.childResponseObjectMap())
							}
						}
					}

					case "MediaAssetByContentId":
					if let value = internalGetMediaAssetByContentId() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "PageByContentId":
					if let value = internalGetPageByContentId() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "PageByResourceKey":
					if let value = internalGetPageByResourceKey() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "PhotoAssetByContentId":
					if let value = internalGetPhotoAssetByContentId() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "PhotoByContentId":
					if let value = internalGetPhotoByContentId() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "PhotoTemplateByContentId":
					if let value = internalGetPhotoTemplateByContentId() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "postplay":
					if let value = internalGetPostplay() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "Schedule":
					if let value = internalGetSchedule() {
						value.forEach {
							if let value = $0 {
								response.append(value)
								response.append(contentsOf: value.childResponseObjectMap())
							}
						}
					}

					case "SeasonAll":
					if let value = internalGetSeasonAll() {
						value.forEach {
							if let value = $0 {
								response.append(value)
								response.append(contentsOf: value.childResponseObjectMap())
							}
						}
					}

					case "SeasonByContentId":
					if let value = internalGetSeasonByContentId() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "SeasonBySeasonId":
					if let value = internalGetSeasonBySeasonId() {
						value.forEach {
							if let value = $0 {
								response.append(value)
								response.append(contentsOf: value.childResponseObjectMap())
							}
						}
					}

					case "SeasonBySeasonIdAndLanguage":
					if let value = internalGetSeasonBySeasonIdAndLanguage() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "SeasonBySeriesSlug":
					if let value = internalGetSeasonBySeriesSlug() {
						value.forEach {
							if let value = $0 {
								response.append(value)
								response.append(contentsOf: value.childResponseObjectMap())
							}
						}
					}

					case "SeasonContainerByContentId":
					if let value = internalGetSeasonContainerByContentId() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "SectionByContentId":
					if let value = internalGetSectionByContentId() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "SeriesAll":
					if let value = internalGetSeriesAll() {
						value.forEach {
							if let value = $0 {
								response.append(value)
								response.append(contentsOf: value.childResponseObjectMap())
							}
						}
					}

					case "SeriesByCategory":
					if let value = internalGetSeriesByCategory() {
						value.forEach {
							if let value = $0 {
								response.append(value)
								response.append(contentsOf: value.childResponseObjectMap())
							}
						}
					}

					case "SeriesByContentId":
					if let value = internalGetSeriesByContentId() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "SeriesByGenre":
					if let value = internalGetSeriesByGenre() {
						value.forEach {
							if let value = $0 {
								response.append(value)
								response.append(contentsOf: value.childResponseObjectMap())
							}
						}
					}

					case "SeriesBySeriesId":
					if let value = internalGetSeriesBySeriesId() {
						value.forEach {
							if let value = $0 {
								response.append(value)
								response.append(contentsOf: value.childResponseObjectMap())
							}
						}
					}

					case "SeriesBySeriesIdAndLanguage":
					if let value = internalGetSeriesBySeriesIdAndLanguage() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "SeriesBySeriesSlug":
					if let value = internalGetSeriesBySeriesSlug() {
						value.forEach {
							if let value = $0 {
								response.append(value)
								response.append(contentsOf: value.childResponseObjectMap())
							}
						}
					}

					case "SeriesContainerByContentId":
					if let value = internalGetSeriesContainerByContentId() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "ShortContentByContentId":
					if let value = internalGetShortContentByContentId() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "TemplateAspectRatioByContentId":
					if let value = internalGetTemplateAspectRatioByContentId() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "TitleAssetByContentId":
					if let value = internalGetTitleAssetByContentId() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "VideoAll":
					if let value = internalGetVideoAll() {
						value.forEach {
							if let value = $0 {
								response.append(value)
								response.append(contentsOf: value.childResponseObjectMap())
							}
						}
					}

					case "VideoByCategory":
					if let value = internalGetVideoByCategory() {
						value.forEach {
							if let value = $0 {
								response.append(value)
								response.append(contentsOf: value.childResponseObjectMap())
							}
						}
					}

					case "VideoByContentId":
					if let value = internalGetVideoByContentId() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "VideoByEpgPartnerProgramId":
					if let value = internalGetVideoByEpgPartnerProgramId() {
						value.forEach {
							if let value = $0 {
								response.append(value)
								response.append(contentsOf: value.childResponseObjectMap())
							}
						}
					}

					case "VideoByGenre":
					if let value = internalGetVideoByGenre() {
						value.forEach {
							if let value = $0 {
								response.append(value)
								response.append(contentsOf: value.childResponseObjectMap())
							}
						}
					}

					case "VideoByGroupingId":
					if let value = internalGetVideoByGroupingId() {
						value.forEach {
							if let value = $0 {
								response.append(value)
								response.append(contentsOf: value.childResponseObjectMap())
							}
						}
					}

					case "VideoByPartnerProgramId":
					if let value = internalGetVideoByPartnerProgramId() {
						value.forEach {
							if let value = $0 {
								response.append(value)
								response.append(contentsOf: value.childResponseObjectMap())
							}
						}
					}

					case "VideoBySeasonId":
					if let value = internalGetVideoBySeasonId() {
						value.forEach {
							if let value = $0 {
								response.append(value)
								response.append(contentsOf: value.childResponseObjectMap())
							}
						}
					}

					case "VideoBySeriesId":
					if let value = internalGetVideoBySeriesId() {
						value.forEach {
							if let value = $0 {
								response.append(value)
								response.append(contentsOf: value.childResponseObjectMap())
							}
						}
					}

					case "VideoBySeriesSlug":
					if let value = internalGetVideoBySeriesSlug() {
						value.forEach {
							if let value = $0 {
								response.append(value)
								response.append(contentsOf: value.childResponseObjectMap())
							}
						}
					}

					case "videodetails":
					if let value = internalGetVideodetails() {
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
