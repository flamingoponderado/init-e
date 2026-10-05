import InitE.BackendStages.TargetChecks.CorrectData1_613
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_613_eq : LabToTarget.sectionLabels 479712 Reencode0_613.lines [] = (480036, localLabels1_613) := by
  with_unfolding_all rfl
#print axioms localLabels1_613_eq
end InitE.BackendStages.TargetChecks.Correct
