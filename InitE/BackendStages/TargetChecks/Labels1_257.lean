import InitE.BackendStages.TargetChecks.Data1_257
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_257_eq : LabToTarget.sectionLabels 147348 Reencode0_257.lines [] = (147900, localLabels1_257) := by
  with_unfolding_all rfl
#print axioms localLabels1_257_eq
end InitE.BackendStages.TargetChecks
