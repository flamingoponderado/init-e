import InitE.BackendStages.TargetChecks.Data1_870
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_870_eq : LabToTarget.sectionLabels 956528 Reencode0_870.lines [] = (957708, localLabels1_870) := by
  with_unfolding_all rfl
#print axioms localLabels1_870_eq
end InitE.BackendStages.TargetChecks
