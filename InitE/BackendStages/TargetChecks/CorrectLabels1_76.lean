import InitE.BackendStages.TargetChecks.CorrectData1_76
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_76_eq : LabToTarget.sectionLabels 7580 Reencode0_76.lines [] = (7616, localLabels1_76) := by
  with_unfolding_all rfl
#print axioms localLabels1_76_eq
end InitE.BackendStages.TargetChecks.Correct
