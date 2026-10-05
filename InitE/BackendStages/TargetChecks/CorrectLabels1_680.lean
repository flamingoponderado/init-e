import InitE.BackendStages.TargetChecks.CorrectData1_680
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_680_eq : LabToTarget.sectionLabels 600752 Reencode0_680.lines [] = (601316, localLabels1_680) := by
  with_unfolding_all rfl
#print axioms localLabels1_680_eq
end InitE.BackendStages.TargetChecks.Correct
