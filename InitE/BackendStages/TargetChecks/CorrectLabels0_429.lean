import InitE.BackendStages.TargetChecks.CorrectData0_429
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_429_eq : LabToTarget.sectionLabels 291684 Initial429.lines [] = (293296, localLabels0_429) := by
  with_unfolding_all rfl
#print axioms localLabels0_429_eq
end InitE.BackendStages.TargetChecks.Correct
