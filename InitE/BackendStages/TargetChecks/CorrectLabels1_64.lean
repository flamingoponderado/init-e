import InitE.BackendStages.TargetChecks.CorrectData1_64
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_64_eq : LabToTarget.sectionLabels 1112 Reencode0_64.lines [] = (2252, localLabels1_64) := by
  with_unfolding_all rfl
#print axioms localLabels1_64_eq
end InitE.BackendStages.TargetChecks.Correct
