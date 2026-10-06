import InitE.BackendStages.TargetChecks.Data1_393
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_393_eq : LabToTarget.sectionLabels 272848 Reencode0_393.lines [] = (273288, localLabels1_393) := by
  with_unfolding_all rfl
#print axioms localLabels1_393_eq
end InitE.BackendStages.TargetChecks
