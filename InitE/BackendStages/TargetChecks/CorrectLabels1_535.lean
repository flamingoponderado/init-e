import InitE.BackendStages.TargetChecks.CorrectData1_535
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_535_eq : LabToTarget.sectionLabels 379340 Reencode0_535.lines [] = (379768, localLabels1_535) := by
  with_unfolding_all rfl
#print axioms localLabels1_535_eq
end InitE.BackendStages.TargetChecks.Correct
