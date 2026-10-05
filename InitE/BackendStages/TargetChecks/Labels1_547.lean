import InitE.BackendStages.TargetChecks.Data1_547
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_547_eq : LabToTarget.sectionLabels 387956 Reencode0_547.lines [] = (388156, localLabels1_547) := by
  with_unfolding_all rfl
#print axioms localLabels1_547_eq
end InitE.BackendStages.TargetChecks
