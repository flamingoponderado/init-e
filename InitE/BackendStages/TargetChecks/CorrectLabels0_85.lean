import InitE.BackendStages.TargetChecks.CorrectData0_85
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_85_eq : LabToTarget.sectionLabels 10120 Initial85.lines [] = (10272, localLabels0_85) := by
  with_unfolding_all rfl
#print axioms localLabels0_85_eq
end InitE.BackendStages.TargetChecks.Correct
