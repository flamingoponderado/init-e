import InitE.BackendStages.TargetChecks.CorrectData0_868
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_868_eq : LabToTarget.sectionLabels 956208 Initial868.lines [] = (956248, localLabels0_868) := by
  with_unfolding_all rfl
#print axioms localLabels0_868_eq
end InitE.BackendStages.TargetChecks.Correct
