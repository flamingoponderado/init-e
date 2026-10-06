import InitE.BackendStages.TargetChecks.CorrectData1_713
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_713_eq : LabToTarget.sectionLabels 678356 Reencode0_713.lines [] = (712076, localLabels1_713) := by
  with_unfolding_all rfl
#print axioms localLabels1_713_eq
end InitE.BackendStages.TargetChecks.Correct
