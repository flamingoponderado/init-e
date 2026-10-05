import InitE.BackendStages.TargetChecks.Data0_259
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels0_259_eq : LabToTarget.sectionLabels 151584 Initial259.lines [] = (152744, localLabels0_259) := by
  with_unfolding_all rfl
#print axioms localLabels0_259_eq
end InitE.BackendStages.TargetChecks
