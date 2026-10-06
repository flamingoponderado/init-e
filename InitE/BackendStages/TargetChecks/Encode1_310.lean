import InitE.BackendStages.TargetChecks.Data1_310
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem Reencode1_310_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 207032 riscvConfig.encode Reencode0_310.lines [] true = (Reencode1_310.lines, 207248, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_310_eq
end InitE.BackendStages.TargetChecks
