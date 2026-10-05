import InitE.BackendStages.TargetChecks.CorrectData1_240
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_240_eq : LabToTarget.sectionLabels 121444 Reencode0_240.lines [] = (131104, localLabels1_240) := by
  with_unfolding_all rfl
#print axioms localLabels1_240_eq
end InitE.BackendStages.TargetChecks.Correct
