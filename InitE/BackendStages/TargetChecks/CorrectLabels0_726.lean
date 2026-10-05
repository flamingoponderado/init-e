import InitE.BackendStages.TargetChecks.CorrectData0_726
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_726_eq : LabToTarget.sectionLabels 715632 Initial726.lines [] = (715644, localLabels0_726) := by
  with_unfolding_all rfl
#print axioms localLabels0_726_eq
end InitE.BackendStages.TargetChecks.Correct
