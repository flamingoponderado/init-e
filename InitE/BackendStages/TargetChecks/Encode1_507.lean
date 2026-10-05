import InitE.BackendStages.TargetChecks.Data1_507
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem Reencode1_507_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 355380 riscvConfig.encode Reencode0_507.lines [] true = (Reencode1_507.lines, 356420, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_507_eq
end InitE.BackendStages.TargetChecks
