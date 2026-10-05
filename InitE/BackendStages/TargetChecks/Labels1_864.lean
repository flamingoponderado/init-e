import InitE.BackendStages.TargetChecks.Data1_864
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_864_eq : LabToTarget.sectionLabels 946200 Reencode0_864.lines [] = (949996, localLabels1_864) := by
  with_unfolding_all rfl
#print axioms localLabels1_864_eq
end InitE.BackendStages.TargetChecks
