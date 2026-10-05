import InitE.BackendStages.TargetChecks.Data1_725
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_725_eq : LabToTarget.sectionLabels 715616 Reencode0_725.lines [] = (715652, localLabels1_725) := by
  with_unfolding_all rfl
#print axioms localLabels1_725_eq
end InitE.BackendStages.TargetChecks
