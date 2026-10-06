import InitE.BackendStages.TargetChecks.Data0_740
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels0_740_eq : LabToTarget.sectionLabels 726512 Initial740.lines [] = (726688, localLabels0_740) := by
  with_unfolding_all rfl
#print axioms localLabels0_740_eq
end InitE.BackendStages.TargetChecks
