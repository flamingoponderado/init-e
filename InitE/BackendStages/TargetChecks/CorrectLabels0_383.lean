import InitE.BackendStages.TargetChecks.CorrectData0_383
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_383_eq : LabToTarget.sectionLabels 263944 Initial383.lines [] = (264804, localLabels0_383) := by
  with_unfolding_all rfl
#print axioms localLabels0_383_eq
end InitE.BackendStages.TargetChecks.Correct
