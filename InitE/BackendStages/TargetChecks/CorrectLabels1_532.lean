import InitE.BackendStages.TargetChecks.CorrectData1_532
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_532_eq : LabToTarget.sectionLabels 376624 Reencode0_532.lines [] = (377644, localLabels1_532) := by
  with_unfolding_all rfl
#print axioms localLabels1_532_eq
end InitE.BackendStages.TargetChecks.Correct
