import InitE.BackendStages.TargetChecks.CorrectData1_444
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_444_eq : LabToTarget.sectionLabels 302856 Reencode0_444.lines [] = (303164, localLabels1_444) := by
  with_unfolding_all rfl
#print axioms localLabels1_444_eq
end InitE.BackendStages.TargetChecks.Correct
