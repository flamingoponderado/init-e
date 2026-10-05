import InitE.BackendStages.TargetChecks.Data1_635
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_635_eq : LabToTarget.sectionLabels 530024 Reencode0_635.lines [] = (531092, localLabels1_635) := by
  with_unfolding_all rfl
#print axioms localLabels1_635_eq
end InitE.BackendStages.TargetChecks
