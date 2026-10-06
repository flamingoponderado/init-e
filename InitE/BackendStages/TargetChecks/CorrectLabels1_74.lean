import InitE.BackendStages.TargetChecks.CorrectData1_74
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_74_eq : LabToTarget.sectionLabels 7112 Reencode0_74.lines [] = (7552, localLabels1_74) := by
  with_unfolding_all rfl
#print axioms localLabels1_74_eq
end InitE.BackendStages.TargetChecks.Correct
