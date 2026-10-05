import InitE.BackendStages.TargetChecks.CorrectData0_836
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_836_eq : LabToTarget.sectionLabels 903856 Initial836.lines [] = (904908, localLabels0_836) := by
  with_unfolding_all rfl
#print axioms localLabels0_836_eq
end InitE.BackendStages.TargetChecks.Correct
