import InitE.BackendStages.TargetChecks.CorrectData0_692
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_692_eq : LabToTarget.sectionLabels 611632 Initial692.lines [] = (624820, localLabels0_692) := by
  with_unfolding_all rfl
#print axioms localLabels0_692_eq
end InitE.BackendStages.TargetChecks.Correct
