import InitE.BackendStages.TargetChecks.CorrectData1_576
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_576_eq : LabToTarget.sectionLabels 418916 Reencode0_576.lines [] = (419956, localLabels1_576) := by
  with_unfolding_all rfl
#print axioms localLabels1_576_eq
end InitE.BackendStages.TargetChecks.Correct
