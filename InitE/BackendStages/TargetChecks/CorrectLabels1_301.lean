import InitE.BackendStages.TargetChecks.CorrectData1_301
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_301_eq : LabToTarget.sectionLabels 197364 Reencode0_301.lines [] = (197416, localLabels1_301) := by
  with_unfolding_all rfl
#print axioms localLabels1_301_eq
end InitE.BackendStages.TargetChecks.Correct
