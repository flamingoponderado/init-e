import InitE.BackendStages.TargetChecks.CorrectData0_791
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_791_eq : LabToTarget.sectionLabels 792236 Initial791.lines [] = (792252, localLabels0_791) := by
  with_unfolding_all rfl
#print axioms localLabels0_791_eq
end InitE.BackendStages.TargetChecks.Correct
