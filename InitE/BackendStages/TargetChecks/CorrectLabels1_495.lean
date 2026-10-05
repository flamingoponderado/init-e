import InitE.BackendStages.TargetChecks.CorrectData1_495
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_495_eq : LabToTarget.sectionLabels 347452 Reencode0_495.lines [] = (347648, localLabels1_495) := by
  with_unfolding_all rfl
#print axioms localLabels1_495_eq
end InitE.BackendStages.TargetChecks.Correct
