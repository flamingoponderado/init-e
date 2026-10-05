import InitE.BackendStages.TargetChecks.CorrectData1_387
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_387_eq : LabToTarget.sectionLabels 266772 Reencode0_387.lines [] = (267432, localLabels1_387) := by
  with_unfolding_all rfl
#print axioms localLabels1_387_eq
end InitE.BackendStages.TargetChecks.Correct
