import InitE.BackendStages.TargetChecks.Data0_627
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels0_627_eq : LabToTarget.sectionLabels 521832 Initial627.lines [] = (523068, localLabels0_627) := by
  with_unfolding_all rfl
#print axioms localLabels0_627_eq
end InitE.BackendStages.TargetChecks
