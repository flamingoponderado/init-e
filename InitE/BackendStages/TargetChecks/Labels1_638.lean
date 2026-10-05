import InitE.BackendStages.TargetChecks.Data1_638
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_638_eq : LabToTarget.sectionLabels 531380 Reencode0_638.lines [] = (531644, localLabels1_638) := by
  with_unfolding_all rfl
#print axioms localLabels1_638_eq
end InitE.BackendStages.TargetChecks
