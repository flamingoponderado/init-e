import InitE.BackendStages.TargetChecks.CorrectData1_466
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_466_eq : LabToTarget.sectionLabels 336168 Reencode0_466.lines [] = (336380, localLabels1_466) := by
  with_unfolding_all rfl
#print axioms localLabels1_466_eq
end InitE.BackendStages.TargetChecks.Correct
