import InitE.BackendStages.TargetChecks.CorrectData0_596
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_596_eq : LabToTarget.sectionLabels 446752 Initial596.lines [] = (449272, localLabels0_596) := by
  with_unfolding_all rfl
#print axioms localLabels0_596_eq
end InitE.BackendStages.TargetChecks.Correct
