import InitE.BackendStages.TargetChecks.CorrectData0_222
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_222_eq : LabToTarget.sectionLabels 84404 Initial222.lines [] = (85552, localLabels0_222) := by
  with_unfolding_all rfl
#print axioms localLabels0_222_eq
end InitE.BackendStages.TargetChecks.Correct
