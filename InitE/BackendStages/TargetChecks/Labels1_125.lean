import InitE.BackendStages.TargetChecks.Data1_125
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_125_eq : LabToTarget.sectionLabels 21276 Reencode0_125.lines [] = (21356, localLabels1_125) := by
  with_unfolding_all rfl
#print axioms localLabels1_125_eq
end InitE.BackendStages.TargetChecks
