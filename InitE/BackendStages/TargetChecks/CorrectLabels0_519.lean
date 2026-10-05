import InitE.BackendStages.TargetChecks.CorrectData0_519
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_519_eq : LabToTarget.sectionLabels 365816 Initial519.lines [] = (366408, localLabels0_519) := by
  with_unfolding_all rfl
#print axioms localLabels0_519_eq
end InitE.BackendStages.TargetChecks.Correct
