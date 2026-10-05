import InitE.BackendStages.TargetChecks.Data0_715
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels0_715_eq : LabToTarget.sectionLabels 712112 Initial715.lines [] = (712192, localLabels0_715) := by
  with_unfolding_all rfl
#print axioms localLabels0_715_eq
end InitE.BackendStages.TargetChecks
