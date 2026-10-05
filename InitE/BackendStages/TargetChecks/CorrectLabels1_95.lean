import InitE.BackendStages.TargetChecks.CorrectData1_95
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_95_eq : LabToTarget.sectionLabels 11972 Reencode0_95.lines [] = (12144, localLabels1_95) := by
  with_unfolding_all rfl
#print axioms localLabels1_95_eq
end InitE.BackendStages.TargetChecks.Correct
