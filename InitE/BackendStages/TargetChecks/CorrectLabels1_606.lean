import InitE.BackendStages.TargetChecks.CorrectData1_606
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_606_eq : LabToTarget.sectionLabels 473564 Reencode0_606.lines [] = (473644, localLabels1_606) := by
  with_unfolding_all rfl
#print axioms localLabels1_606_eq
end InitE.BackendStages.TargetChecks.Correct
