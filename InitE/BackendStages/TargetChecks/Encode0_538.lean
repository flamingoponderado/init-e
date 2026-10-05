import InitE.BackendStages.TargetChecks.Data0_538
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem Reencode0_538_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 383028 riscvConfig.encode Initial538.lines [] true = (Reencode0_538.lines, 384368, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_538_eq
end InitE.BackendStages.TargetChecks
