import InitE.BackendStages.TargetChecks.Data0_555
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels0_555_eq : LabToTarget.sectionLabels 400512 Initial555.lines [] = (401068, localLabels0_555) := by
  with_unfolding_all rfl
#print axioms localLabels0_555_eq
end InitE.BackendStages.TargetChecks
