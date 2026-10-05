import InitE.BackendStages.TargetChecks.CorrectData1_399
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_399_eq : LabToTarget.sectionLabels 274688 Reencode0_399.lines [] = (275456, localLabels1_399) := by
  with_unfolding_all rfl
#print axioms localLabels1_399_eq
end InitE.BackendStages.TargetChecks.Correct
