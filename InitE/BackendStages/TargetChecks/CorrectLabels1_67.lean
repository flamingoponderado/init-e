import InitE.BackendStages.TargetChecks.CorrectData1_67
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_67_eq : LabToTarget.sectionLabels 5920 Reencode0_67.lines [] = (6044, localLabels1_67) := by
  with_unfolding_all rfl
#print axioms localLabels1_67_eq
end InitE.BackendStages.TargetChecks.Correct
