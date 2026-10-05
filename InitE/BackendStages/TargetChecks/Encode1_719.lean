import InitE.BackendStages.TargetChecks.Data1_719
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem Reencode1_719_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 712768 riscvConfig.encode Reencode0_719.lines [] true = (Reencode1_719.lines, 713332, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_719_eq
end InitE.BackendStages.TargetChecks
