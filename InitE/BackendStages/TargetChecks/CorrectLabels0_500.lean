import InitE.BackendStages.TargetChecks.CorrectData0_500
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_500_eq : LabToTarget.sectionLabels 349108 Initial500.lines [] = (349980, localLabels0_500) := by
  with_unfolding_all rfl
#print axioms localLabels0_500_eq
end InitE.BackendStages.TargetChecks.Correct
