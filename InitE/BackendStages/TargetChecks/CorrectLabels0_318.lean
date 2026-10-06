import InitE.BackendStages.TargetChecks.CorrectData0_318
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_318_eq : LabToTarget.sectionLabels 214112 Initial318.lines [] = (215156, localLabels0_318) := by
  with_unfolding_all rfl
#print axioms localLabels0_318_eq
end InitE.BackendStages.TargetChecks.Correct
