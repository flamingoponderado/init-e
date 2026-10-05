import InitE.BackendStages.TargetChecks.CorrectData1_188
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_188_eq : LabToTarget.sectionLabels 61580 Reencode0_188.lines [] = (62268, localLabels1_188) := by
  with_unfolding_all rfl
#print axioms localLabels1_188_eq
end InitE.BackendStages.TargetChecks.Correct
