import InitE.BackendStages.TargetChecks.CorrectData1_177
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_177_eq : LabToTarget.sectionLabels 54416 Reencode0_177.lines [] = (54832, localLabels1_177) := by
  with_unfolding_all rfl
#print axioms localLabels1_177_eq
end InitE.BackendStages.TargetChecks.Correct
