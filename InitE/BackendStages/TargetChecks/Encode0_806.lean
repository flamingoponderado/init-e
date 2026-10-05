import InitE.BackendStages.TargetChecks.Data0_806
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem Reencode0_806_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 830728 riscvConfig.encode Initial806.lines [] true = (Reencode0_806.lines, 832544, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_806_eq
end InitE.BackendStages.TargetChecks
