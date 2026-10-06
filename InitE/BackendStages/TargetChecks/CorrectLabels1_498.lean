import InitE.BackendStages.TargetChecks.CorrectData1_498
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_498_eq : LabToTarget.sectionLabels 348044 Reencode0_498.lines [] = (348236, localLabels1_498) := by
  with_unfolding_all rfl
#print axioms localLabels1_498_eq
end InitE.BackendStages.TargetChecks.Correct
