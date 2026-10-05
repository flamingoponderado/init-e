import InitE.BackendStages.TargetChecks.Data1_740
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_740_eq : LabToTarget.sectionLabels 726532 Reencode0_740.lines [] = (726708, localLabels1_740) := by
  with_unfolding_all rfl
#print axioms localLabels1_740_eq
end InitE.BackendStages.TargetChecks
