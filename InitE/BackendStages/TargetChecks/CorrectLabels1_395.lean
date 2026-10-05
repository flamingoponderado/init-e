import InitE.BackendStages.TargetChecks.CorrectData1_395
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_395_eq : LabToTarget.sectionLabels 273648 Reencode0_395.lines [] = (273956, localLabels1_395) := by
  with_unfolding_all rfl
#print axioms localLabels1_395_eq
end InitE.BackendStages.TargetChecks.Correct
