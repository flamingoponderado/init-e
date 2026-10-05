import InitE.BackendStages.TargetChecks.Data0_823
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels0_823_eq : LabToTarget.sectionLabels 881524 Initial823.lines [] = (884028, localLabels0_823) := by
  with_unfolding_all rfl
#print axioms localLabels0_823_eq
end InitE.BackendStages.TargetChecks
