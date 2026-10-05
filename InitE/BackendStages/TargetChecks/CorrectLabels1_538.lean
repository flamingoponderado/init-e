import InitE.BackendStages.TargetChecks.CorrectData1_538
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_538_eq : LabToTarget.sectionLabels 383028 Reencode0_538.lines [] = (384368, localLabels1_538) := by
  with_unfolding_all rfl
#print axioms localLabels1_538_eq
end InitE.BackendStages.TargetChecks.Correct
