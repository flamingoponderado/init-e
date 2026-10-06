import InitE.BackendStages.TargetChecks.CorrectData1_660
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_660_eq : LabToTarget.sectionLabels 583812 Reencode0_660.lines [] = (584312, localLabels1_660) := by
  with_unfolding_all rfl
#print axioms localLabels1_660_eq
end InitE.BackendStages.TargetChecks.Correct
