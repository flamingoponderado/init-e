import InitE.BackendStages.TargetChecks.CorrectData1_651
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_651_eq : LabToTarget.sectionLabels 555180 Reencode0_651.lines [] = (561432, localLabels1_651) := by
  with_unfolding_all rfl
#print axioms localLabels1_651_eq
end InitE.BackendStages.TargetChecks.Correct
