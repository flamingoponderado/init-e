import InitE.BackendStages.TargetChecks.Data1_148
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem Reencode1_148_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 36672 riscvConfig.encode Reencode0_148.lines [] true = (Reencode1_148.lines, 37232, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_148_eq
end InitE.BackendStages.TargetChecks
