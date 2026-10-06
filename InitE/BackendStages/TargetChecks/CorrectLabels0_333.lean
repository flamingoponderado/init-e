import InitE.BackendStages.TargetChecks.CorrectData0_333
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_333_eq : LabToTarget.sectionLabels 227216 Initial333.lines [] = (227708, localLabels0_333) := by
  with_unfolding_all rfl
#print axioms localLabels0_333_eq
end InitE.BackendStages.TargetChecks.Correct
