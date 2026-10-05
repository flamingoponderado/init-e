import InitE.BackendStages.TargetChecks.CorrectData1_346
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_346_eq : LabToTarget.sectionLabels 238424 Reencode0_346.lines [] = (240328, localLabels1_346) := by
  with_unfolding_all rfl
#print axioms localLabels1_346_eq
end InitE.BackendStages.TargetChecks.Correct
