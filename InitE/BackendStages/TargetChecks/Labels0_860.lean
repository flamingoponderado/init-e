import InitE.BackendStages.TargetChecks.Data0_860
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels0_860_eq : LabToTarget.sectionLabels 931224 Initial860.lines [] = (936420, localLabels0_860) := by
  with_unfolding_all rfl
#print axioms localLabels0_860_eq
end InitE.BackendStages.TargetChecks
