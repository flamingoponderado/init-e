import InitE.BackendStages.TargetChecks.CorrectData1_310
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_310_eq : LabToTarget.sectionLabels 207032 Reencode0_310.lines [] = (207248, localLabels1_310) := by
  with_unfolding_all rfl
#print axioms localLabels1_310_eq
end InitE.BackendStages.TargetChecks.Correct
