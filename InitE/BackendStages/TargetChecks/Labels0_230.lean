import InitE.BackendStages.TargetChecks.Data0_230
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels0_230_eq : LabToTarget.sectionLabels 88068 Initial230.lines [] = (90304, localLabels0_230) := by
  with_unfolding_all rfl
#print axioms localLabels0_230_eq
end InitE.BackendStages.TargetChecks
