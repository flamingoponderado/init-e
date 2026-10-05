import InitE.BackendStages.TargetChecks.Data1_174
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_174_eq : LabToTarget.sectionLabels 53396 Reencode0_174.lines [] = (53788, localLabels1_174) := by
  with_unfolding_all rfl
#print axioms localLabels1_174_eq
end InitE.BackendStages.TargetChecks
