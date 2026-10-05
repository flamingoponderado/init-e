import InitE.BackendStages.TargetChecks.CorrectData1_362
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_362_eq : LabToTarget.sectionLabels 246988 Reencode0_362.lines [] = (247484, localLabels1_362) := by
  with_unfolding_all rfl
#print axioms localLabels1_362_eq
end InitE.BackendStages.TargetChecks.Correct
