import InitE.BackendStages.TargetChecks.CorrectData1_66
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem Reencode1_66_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 5732 riscvConfig.encode Reencode0_66.lines [] true = (Reencode1_66.lines, 5920, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_66_eq
end InitE.BackendStages.TargetChecks.Correct
