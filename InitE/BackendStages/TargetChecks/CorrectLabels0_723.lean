import InitE.BackendStages.TargetChecks.CorrectData0_723
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_723_eq : LabToTarget.sectionLabels 714448 Initial723.lines [] = (715148, localLabels0_723) := by
  with_unfolding_all rfl
#print axioms localLabels0_723_eq
end InitE.BackendStages.TargetChecks.Correct
