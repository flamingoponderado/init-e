import InitE.FullBaseline
import InitE.BaselineSubmission
import Lean.Util.CollectAxioms
import Lean.Elab.Command

/- This module runs before any candidate compilation. The verifier stages all
baseline literal references under its immutable InitEBaselineCandidate namespace. -/
run_cmd do
  let roots := #[`InitE.full_baseline_correct, `InitE.baselineSubmission_admitted]
  let mut names : Array Lean.Name := #[]
  for root in roots do
    for name in (← Lean.collectAxioms root) do
      if name.toString.toName != name then
        throwError "axiom name cannot round-trip through comparator configuration: {name}"
      if !names.contains name then names := names.push name
  let nameStrings := names.map Lean.Name.toString
  let json := Lean.Json.arr (nameStrings.map Lean.Json.str)
  Lean.logInfo m!"INIT_E_TRUSTED_AXIOMS {json.compress}"
