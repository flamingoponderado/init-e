import InitE.BackendStages.TargetChecks.Data1_652
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_652_eq : LabToTarget.sectionLabels 561432 Reencode0_652.lines [] = (568176, localLabels1_652) := by
  with_unfolding_all rfl
#print axioms localLabels1_652_eq
end InitE.BackendStages.TargetChecks
