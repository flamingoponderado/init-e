import InitE.BackendStages.TargetChecks.CorrectData1_268
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_268_eq : LabToTarget.sectionLabels 165668 Reencode0_268.lines [] = (167060, localLabels1_268) := by
  with_unfolding_all rfl
#print axioms localLabels1_268_eq
end InitE.BackendStages.TargetChecks.Correct
