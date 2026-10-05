import InitE.BackendStages.TargetChecks.CorrectData0_181
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem Reencode0_181_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 55136 riscvConfig.encode Initial181.lines [] true = (Reencode0_181.lines, 55340, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_181_eq
end InitE.BackendStages.TargetChecks.Correct
