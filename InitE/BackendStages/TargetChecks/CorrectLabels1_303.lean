import InitE.BackendStages.TargetChecks.CorrectData1_303
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_303_eq : LabToTarget.sectionLabels 198472 Reencode0_303.lines [] = (201132, localLabels1_303) := by
  with_unfolding_all rfl
#print axioms localLabels1_303_eq
end InitE.BackendStages.TargetChecks.Correct
