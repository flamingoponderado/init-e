import InitE.BackendStages.TargetChecks.CorrectData1_782
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_782_eq : LabToTarget.sectionLabels 762616 Reencode0_782.lines [] = (770788, localLabels1_782) := by
  with_unfolding_all rfl
#print axioms localLabels1_782_eq
end InitE.BackendStages.TargetChecks.Correct
