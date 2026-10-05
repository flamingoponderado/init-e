import InitE.BackendStages.TargetChecks.Data1_453
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_453_eq : LabToTarget.sectionLabels 309276 Reencode0_453.lines [] = (309736, localLabels1_453) := by
  with_unfolding_all rfl
#print axioms localLabels1_453_eq
end InitE.BackendStages.TargetChecks
