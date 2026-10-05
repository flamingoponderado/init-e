import InitE.BackendStages.TargetChecks.Data1_608
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_608_eq : LabToTarget.sectionLabels 474196 Reencode0_608.lines [] = (476200, localLabels1_608) := by
  with_unfolding_all rfl
#print axioms localLabels1_608_eq
end InitE.BackendStages.TargetChecks
