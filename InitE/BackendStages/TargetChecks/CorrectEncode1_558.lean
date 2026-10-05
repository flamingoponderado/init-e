import InitE.BackendStages.TargetChecks.CorrectData1_558
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem Reencode1_558_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 402700 riscvConfig.encode Reencode0_558.lines [] true = (Reencode1_558.lines, 403256, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_558_eq
end InitE.BackendStages.TargetChecks.Correct
