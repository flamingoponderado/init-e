import InitE.BackendStages.TargetChecks.CorrectData1_580
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_580_eq : LabToTarget.sectionLabels 422852 Reencode0_580.lines [] = (423384, localLabels1_580) := by
  with_unfolding_all rfl
#print axioms localLabels1_580_eq
end InitE.BackendStages.TargetChecks.Correct
