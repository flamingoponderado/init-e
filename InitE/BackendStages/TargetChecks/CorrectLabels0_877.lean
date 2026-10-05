import InitE.BackendStages.TargetChecks.CorrectData0_877
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_877_eq : LabToTarget.sectionLabels 982588 Initial877.lines [] = (983536, localLabels0_877) := by
  with_unfolding_all rfl
#print axioms localLabels0_877_eq
end InitE.BackendStages.TargetChecks.Correct
