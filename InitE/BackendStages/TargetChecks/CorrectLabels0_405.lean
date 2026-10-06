import InitE.BackendStages.TargetChecks.CorrectData0_405
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_405_eq : LabToTarget.sectionLabels 278720 Initial405.lines [] = (279060, localLabels0_405) := by
  with_unfolding_all rfl
#print axioms localLabels0_405_eq
end InitE.BackendStages.TargetChecks.Correct
