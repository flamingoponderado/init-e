import InitE.BackendStages.TargetChecks.Data0_814
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem Reencode0_814_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 864420 riscvConfig.encode Initial814.lines [] true = (Reencode0_814.lines, 866136, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_814_eq
end InitE.BackendStages.TargetChecks
