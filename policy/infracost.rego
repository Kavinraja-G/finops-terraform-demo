package infracost

maxBudget := 1000.0

deny[out] {
  msg := sprintf(
    "Total monthly cost diff must be less than $%.2f (actual diff is $%.2f)",
    [maxBudget, to_number(input.diffTotalMonthlyCost)],
  )

  out := {
    "msg": msg,
    "failed": to_number(input.diffTotalMonthlyCost) >= maxBudget
  }
}