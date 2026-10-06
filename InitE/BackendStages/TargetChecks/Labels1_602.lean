import InitE.BackendStages.TargetChecks.Data1_602
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_602_eq : LabToTarget.sectionLabels 466040 Reencode0_602.lines [] = (466260, localLabels1_602) := by
  with_unfolding_all rfl
#print axioms localLabels1_602_eq
end InitE.BackendStages.TargetChecks
