import InitE.BackendStages.TargetChecks.CorrectData1_343
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_343_eq : LabToTarget.sectionLabels 235296 Reencode0_343.lines [] = (235516, localLabels1_343) := by
  with_unfolding_all rfl
#print axioms localLabels1_343_eq
end InitE.BackendStages.TargetChecks.Correct
