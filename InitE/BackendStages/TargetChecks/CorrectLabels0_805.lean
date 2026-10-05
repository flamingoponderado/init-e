import InitE.BackendStages.TargetChecks.CorrectData0_805
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_805_eq : LabToTarget.sectionLabels 827660 Initial805.lines [] = (830728, localLabels0_805) := by
  with_unfolding_all rfl
#print axioms localLabels0_805_eq
end InitE.BackendStages.TargetChecks.Correct
