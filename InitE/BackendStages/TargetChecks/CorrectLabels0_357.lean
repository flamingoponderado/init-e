import InitE.BackendStages.TargetChecks.CorrectData0_357
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_357_eq : LabToTarget.sectionLabels 245840 Initial357.lines [] = (245856, localLabels0_357) := by
  with_unfolding_all rfl
#print axioms localLabels0_357_eq
end InitE.BackendStages.TargetChecks.Correct
