import InitE.BackendStages.TargetChecks.Data1_237
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_237_eq : LabToTarget.sectionLabels 114376 Reencode0_237.lines [] = (119752, localLabels1_237) := by
  with_unfolding_all rfl
#print axioms localLabels1_237_eq
end InitE.BackendStages.TargetChecks
