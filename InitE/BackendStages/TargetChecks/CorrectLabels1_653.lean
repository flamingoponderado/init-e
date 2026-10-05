import InitE.BackendStages.TargetChecks.CorrectData1_653
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_653_eq : LabToTarget.sectionLabels 568176 Reencode0_653.lines [] = (571332, localLabels1_653) := by
  with_unfolding_all rfl
#print axioms localLabels1_653_eq
end InitE.BackendStages.TargetChecks.Correct
