import InitE.BackendStages.TargetChecks.Data1_70
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_70_eq : LabToTarget.sectionLabels 6556 Reencode0_70.lines [] = (6592, localLabels1_70) := by
  with_unfolding_all rfl
#print axioms localLabels1_70_eq
end InitE.BackendStages.TargetChecks
