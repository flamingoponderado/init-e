import InitE.BackendStages.TargetChecks.CorrectData0_239
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_239_eq : LabToTarget.sectionLabels 120484 Initial239.lines [] = (121444, localLabels0_239) := by
  with_unfolding_all rfl
#print axioms localLabels0_239_eq
end InitE.BackendStages.TargetChecks.Correct
