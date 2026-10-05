import InitE.BackendStages.TargetChecks.CorrectData1_579
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem Reencode1_579_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 422196 riscvConfig.encode Reencode0_579.lines [] true = (Reencode1_579.lines, 422852, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_579_eq
end InitE.BackendStages.TargetChecks.Correct
