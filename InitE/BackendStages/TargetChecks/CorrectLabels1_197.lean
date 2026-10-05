import InitE.BackendStages.TargetChecks.CorrectData1_197
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_197_eq : LabToTarget.sectionLabels 66220 Reencode0_197.lines [] = (66812, localLabels1_197) := by
  with_unfolding_all rfl
#print axioms localLabels1_197_eq
end InitE.BackendStages.TargetChecks.Correct
