import InitE.BackendStages.TargetChecks.CorrectData1_210
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_210_eq : LabToTarget.sectionLabels 73632 Reencode0_210.lines [] = (73660, localLabels1_210) := by
  with_unfolding_all rfl
#print axioms localLabels1_210_eq
end InitE.BackendStages.TargetChecks.Correct
