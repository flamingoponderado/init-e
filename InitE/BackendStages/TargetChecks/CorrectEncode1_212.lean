import InitE.BackendStages.TargetChecks.CorrectData1_212
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem Reencode1_212_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 75984 riscvConfig.encode Reencode0_212.lines [] true = (Reencode1_212.lines, 77116, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_212_eq
end InitE.BackendStages.TargetChecks.Correct
