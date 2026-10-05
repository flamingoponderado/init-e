import InitE.BackendStages.TargetChecks.Data0_608
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels0_608_eq : LabToTarget.sectionLabels 474180 Initial608.lines [] = (476184, localLabels0_608) := by
  with_unfolding_all rfl
#print axioms localLabels0_608_eq
end InitE.BackendStages.TargetChecks
