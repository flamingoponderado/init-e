import InitE.BackendStages.TargetChecks.Data1_539
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_539_eq : LabToTarget.sectionLabels 384368 Reencode0_539.lines [] = (384876, localLabels1_539) := by
  with_unfolding_all rfl
#print axioms localLabels1_539_eq
end InitE.BackendStages.TargetChecks
