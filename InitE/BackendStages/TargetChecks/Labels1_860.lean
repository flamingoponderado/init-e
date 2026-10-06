import InitE.BackendStages.TargetChecks.Data1_860
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_860_eq : LabToTarget.sectionLabels 931244 Reencode0_860.lines [] = (936440, localLabels1_860) := by
  with_unfolding_all rfl
#print axioms localLabels1_860_eq
end InitE.BackendStages.TargetChecks
