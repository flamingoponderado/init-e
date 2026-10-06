import InitE.BackendStages.TargetChecks.CorrectData1_338
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_338_eq : LabToTarget.sectionLabels 234040 Reencode0_338.lines [] = (234256, localLabels1_338) := by
  with_unfolding_all rfl
#print axioms localLabels1_338_eq
end InitE.BackendStages.TargetChecks.Correct
