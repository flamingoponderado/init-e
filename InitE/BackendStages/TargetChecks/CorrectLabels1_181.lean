import InitE.BackendStages.TargetChecks.CorrectData1_181
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_181_eq : LabToTarget.sectionLabels 55136 Reencode0_181.lines [] = (55340, localLabels1_181) := by
  with_unfolding_all rfl
#print axioms localLabels1_181_eq
end InitE.BackendStages.TargetChecks.Correct
