import InitE.BackendStages.TargetChecks.Data1_290
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem Reencode1_290_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 193412 riscvConfig.encode Reencode0_290.lines [] true = (Reencode1_290.lines, 193668, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_290_eq
end InitE.BackendStages.TargetChecks
