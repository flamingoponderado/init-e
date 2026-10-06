import InitE.BackendStages.TargetChecks.CorrectData1_489
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_489_eq : LabToTarget.sectionLabels 344856 Reencode0_489.lines [] = (345168, localLabels1_489) := by
  with_unfolding_all rfl
#print axioms localLabels1_489_eq
end InitE.BackendStages.TargetChecks.Correct
