import InitE.BackendStages.TargetChecks.CorrectData1_277
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_277_eq : LabToTarget.sectionLabels 174984 Reencode0_277.lines [] = (175792, localLabels1_277) := by
  with_unfolding_all rfl
#print axioms localLabels1_277_eq
end InitE.BackendStages.TargetChecks.Correct
