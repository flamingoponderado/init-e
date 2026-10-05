import InitE.BackendStages.TargetChecks.CorrectData0_834
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem Reencode0_834_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 902248 riscvConfig.encode Initial834.lines [] true = (Reencode0_834.lines, 903300, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_834_eq
end InitE.BackendStages.TargetChecks.Correct
