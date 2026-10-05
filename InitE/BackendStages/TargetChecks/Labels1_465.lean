import InitE.BackendStages.TargetChecks.Data1_465
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_465_eq : LabToTarget.sectionLabels 336132 Reencode0_465.lines [] = (336168, localLabels1_465) := by
  with_unfolding_all rfl
#print axioms localLabels1_465_eq
end InitE.BackendStages.TargetChecks
