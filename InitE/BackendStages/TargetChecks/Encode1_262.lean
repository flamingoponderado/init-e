import InitE.BackendStages.TargetChecks.Data1_262
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem Reencode1_262_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 158276 riscvConfig.encode Reencode0_262.lines [] true = (Reencode1_262.lines, 159592, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_262_eq
end InitE.BackendStages.TargetChecks
