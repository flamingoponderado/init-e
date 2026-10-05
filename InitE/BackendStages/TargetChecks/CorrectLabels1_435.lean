import InitE.BackendStages.TargetChecks.CorrectData1_435
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_435_eq : LabToTarget.sectionLabels 296612 Reencode0_435.lines [] = (298348, localLabels1_435) := by
  with_unfolding_all rfl
#print axioms localLabels1_435_eq
end InitE.BackendStages.TargetChecks.Correct
