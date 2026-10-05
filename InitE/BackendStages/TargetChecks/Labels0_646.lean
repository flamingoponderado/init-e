import InitE.BackendStages.TargetChecks.Data0_646
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels0_646_eq : LabToTarget.sectionLabels 542296 Initial646.lines [] = (549428, localLabels0_646) := by
  with_unfolding_all rfl
#print axioms localLabels0_646_eq
end InitE.BackendStages.TargetChecks
