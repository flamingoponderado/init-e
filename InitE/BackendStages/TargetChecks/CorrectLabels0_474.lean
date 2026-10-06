import InitE.BackendStages.TargetChecks.CorrectData0_474
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_474_eq : LabToTarget.sectionLabels 337932 Initial474.lines [] = (338220, localLabels0_474) := by
  with_unfolding_all rfl
#print axioms localLabels0_474_eq
end InitE.BackendStages.TargetChecks.Correct
