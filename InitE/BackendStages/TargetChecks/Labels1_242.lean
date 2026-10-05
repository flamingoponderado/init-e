import InitE.BackendStages.TargetChecks.Data1_242
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_242_eq : LabToTarget.sectionLabels 133748 Reencode0_242.lines [] = (134280, localLabels1_242) := by
  with_unfolding_all rfl
#print axioms localLabels1_242_eq
end InitE.BackendStages.TargetChecks
