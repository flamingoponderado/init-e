import InitE.BackendStages.TargetChecks.Data1_639
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_639_eq : LabToTarget.sectionLabels 531644 Reencode0_639.lines [] = (534524, localLabels1_639) := by
  with_unfolding_all rfl
#print axioms localLabels1_639_eq
end InitE.BackendStages.TargetChecks
