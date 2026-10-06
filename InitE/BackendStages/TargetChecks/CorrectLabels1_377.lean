import InitE.BackendStages.TargetChecks.CorrectData1_377
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_377_eq : LabToTarget.sectionLabels 257816 Reencode0_377.lines [] = (257840, localLabels1_377) := by
  with_unfolding_all rfl
#print axioms localLabels1_377_eq
end InitE.BackendStages.TargetChecks.Correct
