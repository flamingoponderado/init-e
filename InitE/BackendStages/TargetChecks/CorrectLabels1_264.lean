import InitE.BackendStages.TargetChecks.CorrectData1_264
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_264_eq : LabToTarget.sectionLabels 160608 Reencode0_264.lines [] = (161628, localLabels1_264) := by
  with_unfolding_all rfl
#print axioms localLabels1_264_eq
end InitE.BackendStages.TargetChecks.Correct
