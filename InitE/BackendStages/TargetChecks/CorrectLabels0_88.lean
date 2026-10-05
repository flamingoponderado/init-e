import InitE.BackendStages.TargetChecks.CorrectData0_88
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_88_eq : LabToTarget.sectionLabels 10644 Initial88.lines [] = (10700, localLabels0_88) := by
  with_unfolding_all rfl
#print axioms localLabels0_88_eq
end InitE.BackendStages.TargetChecks.Correct
