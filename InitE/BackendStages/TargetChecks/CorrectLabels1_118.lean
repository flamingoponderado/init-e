import InitE.BackendStages.TargetChecks.CorrectData1_118
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_118_eq : LabToTarget.sectionLabels 14440 Reencode0_118.lines [] = (14588, localLabels1_118) := by
  with_unfolding_all rfl
#print axioms localLabels1_118_eq
end InitE.BackendStages.TargetChecks.Correct
