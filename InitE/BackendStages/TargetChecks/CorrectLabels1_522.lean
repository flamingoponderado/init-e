import InitE.BackendStages.TargetChecks.CorrectData1_522
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_522_eq : LabToTarget.sectionLabels 368512 Reencode0_522.lines [] = (369556, localLabels1_522) := by
  with_unfolding_all rfl
#print axioms localLabels1_522_eq
end InitE.BackendStages.TargetChecks.Correct
