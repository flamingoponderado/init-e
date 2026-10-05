import InitE.BackendStages.TargetChecks.Data1_479
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_479_eq : LabToTarget.sectionLabels 339092 Reencode0_479.lines [] = (339272, localLabels1_479) := by
  with_unfolding_all rfl
#print axioms localLabels1_479_eq
end InitE.BackendStages.TargetChecks
