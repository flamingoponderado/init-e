import InitE.BackendStages.TargetChecks.CorrectData0_196
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_196_eq : LabToTarget.sectionLabels 66192 Initial196.lines [] = (66220, localLabels0_196) := by
  with_unfolding_all rfl
#print axioms localLabels0_196_eq
end InitE.BackendStages.TargetChecks.Correct
