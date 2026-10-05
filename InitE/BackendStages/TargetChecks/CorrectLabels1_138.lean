import InitE.BackendStages.TargetChecks.CorrectData1_138
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_138_eq : LabToTarget.sectionLabels 30088 Reencode0_138.lines [] = (30620, localLabels1_138) := by
  with_unfolding_all rfl
#print axioms localLabels1_138_eq
end InitE.BackendStages.TargetChecks.Correct
