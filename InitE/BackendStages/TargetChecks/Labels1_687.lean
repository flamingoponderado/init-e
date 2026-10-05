import InitE.BackendStages.TargetChecks.Data1_687
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_687_eq : LabToTarget.sectionLabels 602484 Reencode0_687.lines [] = (602992, localLabels1_687) := by
  with_unfolding_all rfl
#print axioms localLabels1_687_eq
end InitE.BackendStages.TargetChecks
