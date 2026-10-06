import InitE.BackendStages.TargetChecks.Data1_515
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_515_eq : LabToTarget.sectionLabels 362832 Reencode0_515.lines [] = (363536, localLabels1_515) := by
  with_unfolding_all rfl
#print axioms localLabels1_515_eq
end InitE.BackendStages.TargetChecks
