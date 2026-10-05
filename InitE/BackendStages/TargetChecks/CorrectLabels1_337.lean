import InitE.BackendStages.TargetChecks.CorrectData1_337
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_337_eq : LabToTarget.sectionLabels 233712 Reencode0_337.lines [] = (234040, localLabels1_337) := by
  with_unfolding_all rfl
#print axioms localLabels1_337_eq
end InitE.BackendStages.TargetChecks.Correct
