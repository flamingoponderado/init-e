import InitE.BackendStages.TargetChecks.CorrectData0_422
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_422_eq : LabToTarget.sectionLabels 287208 Initial422.lines [] = (288236, localLabels0_422) := by
  with_unfolding_all rfl
#print axioms localLabels0_422_eq
end InitE.BackendStages.TargetChecks.Correct
