import InitE.BackendStages.TargetChecks.Data1_555
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem Reencode1_555_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 400512 riscvConfig.encode Reencode0_555.lines [] true = (Reencode1_555.lines, 401068, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_555_eq
end InitE.BackendStages.TargetChecks
