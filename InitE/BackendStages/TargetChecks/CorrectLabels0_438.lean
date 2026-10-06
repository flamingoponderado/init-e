import InitE.BackendStages.TargetChecks.CorrectData0_438
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_438_eq : LabToTarget.sectionLabels 298840 Initial438.lines [] = (299224, localLabels0_438) := by
  with_unfolding_all rfl
#print axioms localLabels0_438_eq
end InitE.BackendStages.TargetChecks.Correct
