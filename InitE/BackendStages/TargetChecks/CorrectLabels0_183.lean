import InitE.BackendStages.TargetChecks.CorrectData0_183
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_183_eq : LabToTarget.sectionLabels 56504 Initial183.lines [] = (57668, localLabels0_183) := by
  with_unfolding_all rfl
#print axioms localLabels0_183_eq
end InitE.BackendStages.TargetChecks.Correct
