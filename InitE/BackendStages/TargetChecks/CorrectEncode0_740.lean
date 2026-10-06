import InitE.BackendStages.TargetChecks.CorrectData0_740
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem Reencode0_740_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 726532 riscvConfig.encode Initial740.lines [] true = (Reencode0_740.lines, 726708, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_740_eq
end InitE.BackendStages.TargetChecks.Correct
