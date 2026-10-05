import InitE.BackendStages.TargetLabelsFinal
import InitE.CompilerConfigLiteral
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem labelsFinal_eq_baseline : Target.labelsFinal = InitE.baselineLabConfig.labels := by
  with_unfolding_all rfl
#print axioms labelsFinal_eq_baseline
end InitE.BackendStages.TargetChecks
