import InitE.BackendStages.TargetChecks.CorrectData1_560
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_560_eq : LabToTarget.sectionLabels 403700 Reencode0_560.lines [] = (405156, localLabels1_560) := by
  with_unfolding_all rfl
#print axioms localLabels1_560_eq
end InitE.BackendStages.TargetChecks.Correct
