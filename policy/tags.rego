package cost_tags

cost_allocation_tags = {"ApplicationOwner", "FinancialOwner", "createdBy"}

check_for_proper_keys(tags) {
	keys := {key | tags[key]}
	leftover := cost_allocation_tags - keys
	leftover == set()
}
