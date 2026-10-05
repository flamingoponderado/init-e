import InitE.BackendStages.TargetChecks.CorrectData0_439
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_439_eq : LabToTarget.sectionLabels 299224 Initial439.lines [] = (299728, localLabels0_439) := by
  with_unfolding_all rfl
#print axioms localLabels0_439_eq
end InitE.BackendStages.TargetChecks.Correct
