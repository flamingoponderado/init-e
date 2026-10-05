import InitE.BackendStages.TargetChecks.CorrectData1_157
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_157_eq : LabToTarget.sectionLabels 41800 Reencode0_157.lines [] = (42232, localLabels1_157) := by
  with_unfolding_all rfl
#print axioms localLabels1_157_eq
end InitE.BackendStages.TargetChecks.Correct
