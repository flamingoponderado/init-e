import InitE.BackendStages.TargetChecks.Data1_878
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_878_eq : LabToTarget.sectionLabels 983560 Reencode0_878.lines [] = (984008, localLabels1_878) := by
  with_unfolding_all rfl
#print axioms localLabels1_878_eq
end InitE.BackendStages.TargetChecks
