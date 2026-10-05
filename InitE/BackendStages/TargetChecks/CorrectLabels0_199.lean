import InitE.BackendStages.TargetChecks.CorrectData0_199
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_199_eq : LabToTarget.sectionLabels 68804 Initial199.lines [] = (70796, localLabels0_199) := by
  with_unfolding_all rfl
#print axioms localLabels0_199_eq
end InitE.BackendStages.TargetChecks.Correct
