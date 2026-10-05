import InitE.BackendStages.TargetChecks.CorrectData1_675
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem Reencode1_675_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 595544 riscvConfig.encode Reencode0_675.lines [] true = (Reencode1_675.lines, 597112, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_675_eq
end InitE.BackendStages.TargetChecks.Correct
