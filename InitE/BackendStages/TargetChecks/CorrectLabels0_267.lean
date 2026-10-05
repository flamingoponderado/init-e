import InitE.BackendStages.TargetChecks.CorrectData0_267
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_267_eq : LabToTarget.sectionLabels 163664 Initial267.lines [] = (165668, localLabels0_267) := by
  with_unfolding_all rfl
#print axioms localLabels0_267_eq
end InitE.BackendStages.TargetChecks.Correct
