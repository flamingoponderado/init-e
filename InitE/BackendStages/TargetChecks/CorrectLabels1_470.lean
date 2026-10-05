import InitE.BackendStages.TargetChecks.CorrectData1_470
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_470_eq : LabToTarget.sectionLabels 337240 Reencode0_470.lines [] = (337412, localLabels1_470) := by
  with_unfolding_all rfl
#print axioms localLabels1_470_eq
end InitE.BackendStages.TargetChecks.Correct
