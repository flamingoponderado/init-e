import InitE.BackendStages.TargetChecks.Data1_169
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem Reencode1_169_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 51648 riscvConfig.encode Reencode0_169.lines [] true = (Reencode1_169.lines, 52276, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_169_eq
end InitE.BackendStages.TargetChecks
