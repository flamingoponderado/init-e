import InitE.BackendStages.TargetChecks.CorrectData1_888
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_888_eq : LabToTarget.sectionLabels 997856 Reencode0_888.lines [] = (998088, localLabels1_888) := by
  with_unfolding_all rfl
#print axioms localLabels1_888_eq
end InitE.BackendStages.TargetChecks.Correct
