import InitE.BackendStages.TargetChecks.Data1_211
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem Reencode1_211_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 73660 riscvConfig.encode Reencode0_211.lines [] true = (Reencode1_211.lines, 75984, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_211_eq
end InitE.BackendStages.TargetChecks
