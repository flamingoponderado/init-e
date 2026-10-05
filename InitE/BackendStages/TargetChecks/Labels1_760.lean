import InitE.BackendStages.TargetChecks.Data1_760
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_760_eq : LabToTarget.sectionLabels 738628 Reencode0_760.lines [] = (739136, localLabels1_760) := by
  with_unfolding_all rfl
#print axioms localLabels1_760_eq
end InitE.BackendStages.TargetChecks
