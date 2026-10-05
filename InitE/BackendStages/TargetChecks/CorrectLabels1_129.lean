import InitE.BackendStages.TargetChecks.CorrectData1_129
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_129_eq : LabToTarget.sectionLabels 25164 Reencode0_129.lines [] = (26376, localLabels1_129) := by
  with_unfolding_all rfl
#print axioms localLabels1_129_eq
end InitE.BackendStages.TargetChecks.Correct
