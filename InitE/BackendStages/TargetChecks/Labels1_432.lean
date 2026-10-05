import InitE.BackendStages.TargetChecks.Data1_432
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_432_eq : LabToTarget.sectionLabels 294456 Reencode0_432.lines [] = (294896, localLabels1_432) := by
  with_unfolding_all rfl
#print axioms localLabels1_432_eq
end InitE.BackendStages.TargetChecks
