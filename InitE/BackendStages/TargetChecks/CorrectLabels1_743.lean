import InitE.BackendStages.TargetChecks.CorrectData1_743
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_743_eq : LabToTarget.sectionLabels 726952 Reencode0_743.lines [] = (727276, localLabels1_743) := by
  with_unfolding_all rfl
#print axioms localLabels1_743_eq
end InitE.BackendStages.TargetChecks.Correct
