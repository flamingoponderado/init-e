import InitE.BackendStages.TargetChecks.CorrectData1_485
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_485_eq : LabToTarget.sectionLabels 342868 Reencode0_485.lines [] = (343464, localLabels1_485) := by
  with_unfolding_all rfl
#print axioms localLabels1_485_eq
end InitE.BackendStages.TargetChecks.Correct
