import InitE.BackendStages.TargetChecks.CorrectData1_162
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem Reencode1_162_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 46556 riscvConfig.encode Reencode0_162.lines [] true = (Reencode1_162.lines, 46928, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_162_eq
end InitE.BackendStages.TargetChecks.Correct
