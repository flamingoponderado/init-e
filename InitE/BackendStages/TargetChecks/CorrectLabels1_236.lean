import InitE.BackendStages.TargetChecks.CorrectData1_236
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_236_eq : LabToTarget.sectionLabels 112388 Reencode0_236.lines [] = (114376, localLabels1_236) := by
  with_unfolding_all rfl
#print axioms localLabels1_236_eq
end InitE.BackendStages.TargetChecks.Correct
