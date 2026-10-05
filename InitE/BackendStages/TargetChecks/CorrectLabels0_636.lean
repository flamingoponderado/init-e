import InitE.BackendStages.TargetChecks.CorrectData0_636
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_636_eq : LabToTarget.sectionLabels 531076 Initial636.lines [] = (531240, localLabels0_636) := by
  with_unfolding_all rfl
#print axioms localLabels0_636_eq
end InitE.BackendStages.TargetChecks.Correct
