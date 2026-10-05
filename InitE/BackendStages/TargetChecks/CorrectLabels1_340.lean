import InitE.BackendStages.TargetChecks.CorrectData1_340
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_340_eq : LabToTarget.sectionLabels 234556 Reencode0_340.lines [] = (234776, localLabels1_340) := by
  with_unfolding_all rfl
#print axioms localLabels1_340_eq
end InitE.BackendStages.TargetChecks.Correct
