import InitE.BackendStages.TargetChecks.CorrectData1_531
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_531_eq : LabToTarget.sectionLabels 376332 Reencode0_531.lines [] = (376624, localLabels1_531) := by
  with_unfolding_all rfl
#print axioms localLabels1_531_eq
end InitE.BackendStages.TargetChecks.Correct
