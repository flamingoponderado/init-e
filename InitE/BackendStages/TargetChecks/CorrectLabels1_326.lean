import InitE.BackendStages.TargetChecks.CorrectData1_326
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_326_eq : LabToTarget.sectionLabels 222644 Reencode0_326.lines [] = (224584, localLabels1_326) := by
  with_unfolding_all rfl
#print axioms localLabels1_326_eq
end InitE.BackendStages.TargetChecks.Correct
