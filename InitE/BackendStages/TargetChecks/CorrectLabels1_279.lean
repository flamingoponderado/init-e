import InitE.BackendStages.TargetChecks.CorrectData1_279
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_279_eq : LabToTarget.sectionLabels 179908 Reencode0_279.lines [] = (180480, localLabels1_279) := by
  with_unfolding_all rfl
#print axioms localLabels1_279_eq
end InitE.BackendStages.TargetChecks.Correct
