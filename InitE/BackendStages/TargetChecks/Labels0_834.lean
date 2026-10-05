import InitE.BackendStages.TargetChecks.Data0_834
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels0_834_eq : LabToTarget.sectionLabels 902228 Initial834.lines [] = (903280, localLabels0_834) := by
  with_unfolding_all rfl
#print axioms localLabels0_834_eq
end InitE.BackendStages.TargetChecks
