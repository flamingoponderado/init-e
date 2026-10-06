import InitE.BackendStages.TargetChecks.Data0_570
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels0_570_eq : LabToTarget.sectionLabels 413504 Initial570.lines [] = (413932, localLabels0_570) := by
  with_unfolding_all rfl
#print axioms localLabels0_570_eq
end InitE.BackendStages.TargetChecks
