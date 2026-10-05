import InitE.BackendStages.TargetChecks.CorrectData0_846
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_846_eq : LabToTarget.sectionLabels 912280 Initial846.lines [] = (914568, localLabels0_846) := by
  with_unfolding_all rfl
#print axioms localLabels0_846_eq
end InitE.BackendStages.TargetChecks.Correct
