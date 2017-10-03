// Generated from graphql_swift_gen gem

open class BAMify {
	open static func buildQuery(_ subfields: (SearchQueryQuery) -> Void) -> SearchQueryQuery {
		let root = SearchQueryQuery()
		subfields(root)
		return root
	}

	open static func buildMutation(_ subfields: (SearchMutationQuery) -> Void) -> SearchMutationQuery {
		let root = SearchMutationQuery()
		subfields(root)
		return root
	}
}
