import InitE.BackendStages.TargetChecks.CorrectData0_245
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_245_eq : LabToTarget.sectionLabels 136216 Initial245.lines [] = (136828, localLabels0_245) := by
  with_unfolding_all rfl
#print axioms localLabels0_245_eq
end InitE.BackendStages.TargetChecks.Correct
