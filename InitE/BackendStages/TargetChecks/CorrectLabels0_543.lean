import InitE.BackendStages.TargetChecks.CorrectData0_543
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_543_eq : LabToTarget.sectionLabels 385552 Initial543.lines [] = (385660, localLabels0_543) := by
  with_unfolding_all rfl
#print axioms localLabels0_543_eq
end InitE.BackendStages.TargetChecks.Correct
