import InitE.BackendStages.TargetChecks.CorrectData0_689
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_689_eq : LabToTarget.sectionLabels 603000 Initial689.lines [] = (603496, localLabels0_689) := by
  with_unfolding_all rfl
#print axioms localLabels0_689_eq
end InitE.BackendStages.TargetChecks.Correct
