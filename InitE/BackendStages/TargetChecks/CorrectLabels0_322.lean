import InitE.BackendStages.TargetChecks.CorrectData0_322
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_322_eq : LabToTarget.sectionLabels 218748 Initial322.lines [] = (219340, localLabels0_322) := by
  with_unfolding_all rfl
#print axioms localLabels0_322_eq
end InitE.BackendStages.TargetChecks.Correct
