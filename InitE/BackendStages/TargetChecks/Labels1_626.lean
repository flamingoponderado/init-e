import InitE.BackendStages.TargetChecks.Data1_626
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_626_eq : LabToTarget.sectionLabels 516248 Reencode0_626.lines [] = (521848, localLabels1_626) := by
  with_unfolding_all rfl
#print axioms localLabels1_626_eq
end InitE.BackendStages.TargetChecks
