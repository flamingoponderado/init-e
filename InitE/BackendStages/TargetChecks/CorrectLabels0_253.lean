import InitE.BackendStages.TargetChecks.CorrectData0_253
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_253_eq : LabToTarget.sectionLabels 141120 Initial253.lines [] = (142632, localLabels0_253) := by
  with_unfolding_all rfl
#print axioms localLabels0_253_eq
end InitE.BackendStages.TargetChecks.Correct
