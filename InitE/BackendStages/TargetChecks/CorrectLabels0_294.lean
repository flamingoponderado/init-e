import InitE.BackendStages.TargetChecks.CorrectData0_294
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_294_eq : LabToTarget.sectionLabels 194776 Initial294.lines [] = (195280, localLabels0_294) := by
  with_unfolding_all rfl
#print axioms localLabels0_294_eq
end InitE.BackendStages.TargetChecks.Correct
