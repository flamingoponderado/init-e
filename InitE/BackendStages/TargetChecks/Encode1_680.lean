import InitE.BackendStages.TargetChecks.Data1_680
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem Reencode1_680_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 600752 riscvConfig.encode Reencode0_680.lines [] true = (Reencode1_680.lines, 601316, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_680_eq
end InitE.BackendStages.TargetChecks
