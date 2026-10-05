import InitE.BackendStages.TargetChecks.Data0_125
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem Reencode0_125_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 21276 riscvConfig.encode Initial125.lines [] true = (Reencode0_125.lines, 21356, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_125_eq
end InitE.BackendStages.TargetChecks
