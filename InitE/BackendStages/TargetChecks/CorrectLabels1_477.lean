import InitE.BackendStages.TargetChecks.CorrectData1_477
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_477_eq : LabToTarget.sectionLabels 338344 Reencode0_477.lines [] = (338452, localLabels1_477) := by
  with_unfolding_all rfl
#print axioms localLabels1_477_eq
end InitE.BackendStages.TargetChecks.Correct
