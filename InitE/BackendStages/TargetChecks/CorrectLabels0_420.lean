import InitE.BackendStages.TargetChecks.CorrectData0_420
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_420_eq : LabToTarget.sectionLabels 286656 Initial420.lines [] = (287012, localLabels0_420) := by
  with_unfolding_all rfl
#print axioms localLabels0_420_eq
end InitE.BackendStages.TargetChecks.Correct
