import InitE.BackendStages.TargetChecks.Data0_579
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels0_579_eq : LabToTarget.sectionLabels 422196 Initial579.lines [] = (422852, localLabels0_579) := by
  with_unfolding_all rfl
#print axioms localLabels0_579_eq
end InitE.BackendStages.TargetChecks
