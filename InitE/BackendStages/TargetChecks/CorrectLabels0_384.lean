import InitE.BackendStages.TargetChecks.CorrectData0_384
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_384_eq : LabToTarget.sectionLabels 264804 Initial384.lines [] = (265580, localLabels0_384) := by
  with_unfolding_all rfl
#print axioms localLabels0_384_eq
end InitE.BackendStages.TargetChecks.Correct
