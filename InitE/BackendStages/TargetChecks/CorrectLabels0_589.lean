import InitE.BackendStages.TargetChecks.CorrectData0_589
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_589_eq : LabToTarget.sectionLabels 431736 Initial589.lines [] = (433080, localLabels0_589) := by
  with_unfolding_all rfl
#print axioms localLabels0_589_eq
end InitE.BackendStages.TargetChecks.Correct
