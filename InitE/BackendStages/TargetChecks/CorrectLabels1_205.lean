import InitE.BackendStages.TargetChecks.CorrectData1_205
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_205_eq : LabToTarget.sectionLabels 71920 Reencode0_205.lines [] = (72428, localLabels1_205) := by
  with_unfolding_all rfl
#print axioms localLabels1_205_eq
end InitE.BackendStages.TargetChecks.Correct
