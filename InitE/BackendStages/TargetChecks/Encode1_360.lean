import InitE.BackendStages.TargetChecks.Data1_360
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem Reencode1_360_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 246684 riscvConfig.encode Reencode0_360.lines [] true = (Reencode1_360.lines, 246936, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_360_eq
end InitE.BackendStages.TargetChecks
