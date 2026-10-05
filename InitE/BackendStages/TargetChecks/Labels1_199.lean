import InitE.BackendStages.TargetChecks.Data1_199
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_199_eq : LabToTarget.sectionLabels 68804 Reencode0_199.lines [] = (70796, localLabels1_199) := by
  with_unfolding_all rfl
#print axioms localLabels1_199_eq
end InitE.BackendStages.TargetChecks
