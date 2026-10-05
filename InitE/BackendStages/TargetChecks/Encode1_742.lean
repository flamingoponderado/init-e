import InitE.BackendStages.TargetChecks.Data1_742
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem Reencode1_742_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 726824 riscvConfig.encode Reencode0_742.lines [] true = (Reencode1_742.lines, 726952, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_742_eq
end InitE.BackendStages.TargetChecks
