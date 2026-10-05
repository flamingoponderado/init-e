import InitE.BackendStages.TargetChecks.CorrectData1_64
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem Reencode1_64_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 1112 riscvConfig.encode Reencode0_64.lines [] true = (Reencode1_64.lines, 2252, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_64_eq
end InitE.BackendStages.TargetChecks.Correct
