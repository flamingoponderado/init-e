import InitE.BackendStages.TargetChecks.CorrectData1_521
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_521_eq : LabToTarget.sectionLabels 367468 Reencode0_521.lines [] = (368512, localLabels1_521) := by
  with_unfolding_all rfl
#print axioms localLabels1_521_eq
end InitE.BackendStages.TargetChecks.Correct
