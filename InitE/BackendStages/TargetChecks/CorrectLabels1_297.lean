import InitE.BackendStages.TargetChecks.CorrectData1_297
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_297_eq : LabToTarget.sectionLabels 196224 Reencode0_297.lines [] = (196456, localLabels1_297) := by
  with_unfolding_all rfl
#print axioms localLabels1_297_eq
end InitE.BackendStages.TargetChecks.Correct
