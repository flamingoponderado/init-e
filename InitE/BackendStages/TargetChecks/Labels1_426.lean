import InitE.BackendStages.TargetChecks.Data1_426
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_426_eq : LabToTarget.sectionLabels 290036 Reencode0_426.lines [] = (290628, localLabels1_426) := by
  with_unfolding_all rfl
#print axioms localLabels1_426_eq
end InitE.BackendStages.TargetChecks
