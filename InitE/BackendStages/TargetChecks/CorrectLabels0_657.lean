import InitE.BackendStages.TargetChecks.CorrectData0_657
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_657_eq : LabToTarget.sectionLabels 580960 Initial657.lines [] = (582600, localLabels0_657) := by
  with_unfolding_all rfl
#print axioms localLabels0_657_eq
end InitE.BackendStages.TargetChecks.Correct
