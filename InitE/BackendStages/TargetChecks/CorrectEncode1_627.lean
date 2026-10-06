import InitE.BackendStages.TargetChecks.CorrectData1_627
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem Reencode1_627_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 521848 riscvConfig.encode Reencode0_627.lines [] true = (Reencode1_627.lines, 523084, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_627_eq
end InitE.BackendStages.TargetChecks.Correct
