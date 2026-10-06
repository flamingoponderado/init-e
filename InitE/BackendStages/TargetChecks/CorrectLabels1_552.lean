import InitE.BackendStages.TargetChecks.CorrectData1_552
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_552_eq : LabToTarget.sectionLabels 393932 Reencode0_552.lines [] = (398576, localLabels1_552) := by
  with_unfolding_all rfl
#print axioms localLabels1_552_eq
end InitE.BackendStages.TargetChecks.Correct
