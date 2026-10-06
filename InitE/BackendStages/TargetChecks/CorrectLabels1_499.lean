import InitE.BackendStages.TargetChecks.CorrectData1_499
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_499_eq : LabToTarget.sectionLabels 348236 Reencode0_499.lines [] = (349108, localLabels1_499) := by
  with_unfolding_all rfl
#print axioms localLabels1_499_eq
end InitE.BackendStages.TargetChecks.Correct
