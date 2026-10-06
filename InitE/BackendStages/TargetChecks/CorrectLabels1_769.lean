import InitE.BackendStages.TargetChecks.CorrectData1_769
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_769_eq : LabToTarget.sectionLabels 749372 Reencode0_769.lines [] = (751372, localLabels1_769) := by
  with_unfolding_all rfl
#print axioms localLabels1_769_eq
end InitE.BackendStages.TargetChecks.Correct
