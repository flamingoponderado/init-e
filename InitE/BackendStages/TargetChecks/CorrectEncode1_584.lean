import InitE.BackendStages.TargetChecks.CorrectData1_584
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem Reencode1_584_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 425020 riscvConfig.encode Reencode0_584.lines [] true = (Reencode1_584.lines, 425700, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_584_eq
end InitE.BackendStages.TargetChecks.Correct
