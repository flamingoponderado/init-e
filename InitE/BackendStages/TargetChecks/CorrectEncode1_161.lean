import InitE.BackendStages.TargetChecks.CorrectData1_161
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem Reencode1_161_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 43844 riscvConfig.encode Reencode0_161.lines [] true = (Reencode1_161.lines, 46556, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_161_eq
end InitE.BackendStages.TargetChecks.Correct
