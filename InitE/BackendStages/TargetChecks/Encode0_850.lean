import InitE.BackendStages.TargetChecks.Data0_850
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem Reencode0_850_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 921964 riscvConfig.encode Initial850.lines [] true = (Reencode0_850.lines, 922716, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_850_eq
end InitE.BackendStages.TargetChecks
