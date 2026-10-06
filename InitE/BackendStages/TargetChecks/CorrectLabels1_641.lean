import InitE.BackendStages.TargetChecks.CorrectData1_641
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_641_eq : LabToTarget.sectionLabels 535248 Reencode0_641.lines [] = (535552, localLabels1_641) := by
  with_unfolding_all rfl
#print axioms localLabels1_641_eq
end InitE.BackendStages.TargetChecks.Correct
