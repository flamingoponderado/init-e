import InitE.BackendStages.TargetChecks.CorrectData0_181
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_181_eq : LabToTarget.sectionLabels 55136 Initial181.lines [] = (55340, localLabels0_181) := by
  with_unfolding_all rfl
#print axioms localLabels0_181_eq
end InitE.BackendStages.TargetChecks.Correct
