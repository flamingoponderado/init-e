import InitE.BackendStages.TargetChecks.Data1_180
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem Reencode1_180_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 55124 riscvConfig.encode Reencode0_180.lines [] true = (Reencode1_180.lines, 55136, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_180_eq
end InitE.BackendStages.TargetChecks
