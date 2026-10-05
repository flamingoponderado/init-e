import InitE.BackendStages.TargetChecks.CorrectData1_637
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_637_eq : LabToTarget.sectionLabels 531256 Reencode0_637.lines [] = (531380, localLabels1_637) := by
  with_unfolding_all rfl
#print axioms localLabels1_637_eq
end InitE.BackendStages.TargetChecks.Correct
