import InitE.BackendStages.TargetChecks.CorrectData1_456
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_456_eq : LabToTarget.sectionLabels 310860 Reencode0_456.lines [] = (314740, localLabels1_456) := by
  with_unfolding_all rfl
#print axioms localLabels1_456_eq
end InitE.BackendStages.TargetChecks.Correct
