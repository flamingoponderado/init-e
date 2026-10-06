import InitE.BackendStages.TargetChecks.CorrectData1_441
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_441_eq : LabToTarget.sectionLabels 300380 Reencode0_441.lines [] = (301624, localLabels1_441) := by
  with_unfolding_all rfl
#print axioms localLabels1_441_eq
end InitE.BackendStages.TargetChecks.Correct
