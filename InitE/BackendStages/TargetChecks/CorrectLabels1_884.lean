import InitE.BackendStages.TargetChecks.CorrectData1_884
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_884_eq : LabToTarget.sectionLabels 996928 Reencode0_884.lines [] = (997160, localLabels1_884) := by
  with_unfolding_all rfl
#print axioms localLabels1_884_eq
end InitE.BackendStages.TargetChecks.Correct
