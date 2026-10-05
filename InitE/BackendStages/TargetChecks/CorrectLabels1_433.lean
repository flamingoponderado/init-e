import InitE.BackendStages.TargetChecks.CorrectData1_433
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_433_eq : LabToTarget.sectionLabels 294896 Reencode0_433.lines [] = (296144, localLabels1_433) := by
  with_unfolding_all rfl
#print axioms localLabels1_433_eq
end InitE.BackendStages.TargetChecks.Correct
