import InitE.BackendStages.TargetChecks.CorrectData1_816
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_816_eq : LabToTarget.sectionLabels 868928 Reencode0_816.lines [] = (869812, localLabels1_816) := by
  with_unfolding_all rfl
#print axioms localLabels1_816_eq
end InitE.BackendStages.TargetChecks.Correct
