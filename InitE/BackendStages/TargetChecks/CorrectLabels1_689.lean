import InitE.BackendStages.TargetChecks.CorrectData1_689
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_689_eq : LabToTarget.sectionLabels 603016 Reencode0_689.lines [] = (603512, localLabels1_689) := by
  with_unfolding_all rfl
#print axioms localLabels1_689_eq
end InitE.BackendStages.TargetChecks.Correct
