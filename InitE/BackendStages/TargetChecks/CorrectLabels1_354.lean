import InitE.BackendStages.TargetChecks.CorrectData1_354
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_354_eq : LabToTarget.sectionLabels 245736 Reencode0_354.lines [] = (245768, localLabels1_354) := by
  with_unfolding_all rfl
#print axioms localLabels1_354_eq
end InitE.BackendStages.TargetChecks.Correct
