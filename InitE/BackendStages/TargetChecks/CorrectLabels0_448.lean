import InitE.BackendStages.TargetChecks.CorrectData0_448
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_448_eq : LabToTarget.sectionLabels 304500 Initial448.lines [] = (304668, localLabels0_448) := by
  with_unfolding_all rfl
#print axioms localLabels0_448_eq
end InitE.BackendStages.TargetChecks.Correct
