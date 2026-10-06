import InitE.BackendStages.TargetChecks.Data0_797
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem Reencode0_797_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 805972 riscvConfig.encode Initial797.lines [] true = (Reencode0_797.lines, 807336, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_797_eq
end InitE.BackendStages.TargetChecks
