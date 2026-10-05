import InitE.BackendStages.TargetChecks.CorrectData0_372
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_372_eq : LabToTarget.sectionLabels 257108 Initial372.lines [] = (257720, localLabels0_372) := by
  with_unfolding_all rfl
#print axioms localLabels0_372_eq
end InitE.BackendStages.TargetChecks.Correct
