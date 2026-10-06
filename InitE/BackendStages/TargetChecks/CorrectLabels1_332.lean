import InitE.BackendStages.TargetChecks.CorrectData1_332
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_332_eq : LabToTarget.sectionLabels 226696 Reencode0_332.lines [] = (227216, localLabels1_332) := by
  with_unfolding_all rfl
#print axioms localLabels1_332_eq
end InitE.BackendStages.TargetChecks.Correct
