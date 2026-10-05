import InitE.BackendStages.TargetChecks.Data1_421
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem Reencode1_421_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 287012 riscvConfig.encode Reencode0_421.lines [] true = (Reencode1_421.lines, 287208, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_421_eq
end InitE.BackendStages.TargetChecks
