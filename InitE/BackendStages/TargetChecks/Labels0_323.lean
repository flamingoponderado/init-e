import InitE.BackendStages.TargetChecks.Data0_323
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels0_323_eq : LabToTarget.sectionLabels 219340 Initial323.lines [] = (220172, localLabels0_323) := by
  with_unfolding_all rfl
#print axioms localLabels0_323_eq
end InitE.BackendStages.TargetChecks
