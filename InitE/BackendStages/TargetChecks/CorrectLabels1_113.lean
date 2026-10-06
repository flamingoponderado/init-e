import InitE.BackendStages.TargetChecks.CorrectData1_113
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_113_eq : LabToTarget.sectionLabels 14016 Reencode0_113.lines [] = (14044, localLabels1_113) := by
  with_unfolding_all rfl
#print axioms localLabels1_113_eq
end InitE.BackendStages.TargetChecks.Correct
