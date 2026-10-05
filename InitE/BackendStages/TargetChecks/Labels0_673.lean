import InitE.BackendStages.TargetChecks.Data0_673
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels0_673_eq : LabToTarget.sectionLabels 594356 Initial673.lines [] = (594528, localLabels0_673) := by
  with_unfolding_all rfl
#print axioms localLabels0_673_eq
end InitE.BackendStages.TargetChecks
