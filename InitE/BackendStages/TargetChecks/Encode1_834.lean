import InitE.BackendStages.TargetChecks.Data1_834
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem Reencode1_834_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 902248 riscvConfig.encode Reencode0_834.lines [] true = (Reencode1_834.lines, 903300, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_834_eq
end InitE.BackendStages.TargetChecks
