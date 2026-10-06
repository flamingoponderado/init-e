import InitE.BackendStages.TargetChecks.CorrectData1_224
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_224_eq : LabToTarget.sectionLabels 85620 Reencode0_224.lines [] = (85688, localLabels1_224) := by
  with_unfolding_all rfl
#print axioms localLabels1_224_eq
end InitE.BackendStages.TargetChecks.Correct
