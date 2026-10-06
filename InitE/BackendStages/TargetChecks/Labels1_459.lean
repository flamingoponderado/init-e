import InitE.BackendStages.TargetChecks.Data1_459
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_459_eq : LabToTarget.sectionLabels 315204 Reencode0_459.lines [] = (318684, localLabels1_459) := by
  with_unfolding_all rfl
#print axioms localLabels1_459_eq
end InitE.BackendStages.TargetChecks
