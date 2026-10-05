import InitE.BackendStages.TargetChecks.Data0_773
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem Reencode0_773_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 753412 riscvConfig.encode Initial773.lines [] true = (Reencode0_773.lines, 755144, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_773_eq
end InitE.BackendStages.TargetChecks
