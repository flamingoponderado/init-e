import InitE.BackendStages.TargetChecks.CorrectData1_487
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_487_eq : LabToTarget.sectionLabels 343860 Reencode0_487.lines [] = (344744, localLabels1_487) := by
  with_unfolding_all rfl
#print axioms localLabels1_487_eq
end InitE.BackendStages.TargetChecks.Correct
