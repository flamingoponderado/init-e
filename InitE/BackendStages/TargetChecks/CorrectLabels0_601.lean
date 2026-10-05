import InitE.BackendStages.TargetChecks.CorrectData0_601
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_601_eq : LabToTarget.sectionLabels 465644 Initial601.lines [] = (466024, localLabels0_601) := by
  with_unfolding_all rfl
#print axioms localLabels0_601_eq
end InitE.BackendStages.TargetChecks.Correct
