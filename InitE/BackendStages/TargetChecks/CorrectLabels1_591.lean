import InitE.BackendStages.TargetChecks.CorrectData1_591
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_591_eq : LabToTarget.sectionLabels 435852 Reencode0_591.lines [] = (436064, localLabels1_591) := by
  with_unfolding_all rfl
#print axioms localLabels1_591_eq
end InitE.BackendStages.TargetChecks.Correct
