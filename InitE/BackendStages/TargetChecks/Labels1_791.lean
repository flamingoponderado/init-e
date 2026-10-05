import InitE.BackendStages.TargetChecks.Data1_791
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_791_eq : LabToTarget.sectionLabels 792256 Reencode0_791.lines [] = (792272, localLabels1_791) := by
  with_unfolding_all rfl
#print axioms localLabels1_791_eq
end InitE.BackendStages.TargetChecks
