import InitE.BackendStages.TargetChecks.Data0_745
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels0_745_eq : LabToTarget.sectionLabels 727644 Initial745.lines [] = (728340, localLabels0_745) := by
  with_unfolding_all rfl
#print axioms localLabels0_745_eq
end InitE.BackendStages.TargetChecks
