import InitE.BackendStages.TargetChecks.Data0_194
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels0_194_eq : LabToTarget.sectionLabels 66100 Initial194.lines [] = (66116, localLabels0_194) := by
  with_unfolding_all rfl
#print axioms localLabels0_194_eq
end InitE.BackendStages.TargetChecks
