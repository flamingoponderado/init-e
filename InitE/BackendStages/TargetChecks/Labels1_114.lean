import InitE.BackendStages.TargetChecks.Data1_114
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_114_eq : LabToTarget.sectionLabels 14044 Reencode0_114.lines [] = (14072, localLabels1_114) := by
  with_unfolding_all rfl
#print axioms localLabels1_114_eq
end InitE.BackendStages.TargetChecks
