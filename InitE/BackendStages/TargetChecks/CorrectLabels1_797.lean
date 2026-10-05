import InitE.BackendStages.TargetChecks.CorrectData1_797
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_797_eq : LabToTarget.sectionLabels 805992 Reencode0_797.lines [] = (807356, localLabels1_797) := by
  with_unfolding_all rfl
#print axioms localLabels1_797_eq
end InitE.BackendStages.TargetChecks.Correct
