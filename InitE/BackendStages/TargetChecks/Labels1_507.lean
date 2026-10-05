import InitE.BackendStages.TargetChecks.Data1_507
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_507_eq : LabToTarget.sectionLabels 355380 Reencode0_507.lines [] = (356420, localLabels1_507) := by
  with_unfolding_all rfl
#print axioms localLabels1_507_eq
end InitE.BackendStages.TargetChecks
