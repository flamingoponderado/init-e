import InitE.BackendStages.TargetChecks.CorrectData0_641
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_641_eq : LabToTarget.sectionLabels 535232 Initial641.lines [] = (535536, localLabels0_641) := by
  with_unfolding_all rfl
#print axioms localLabels0_641_eq
end InitE.BackendStages.TargetChecks.Correct
