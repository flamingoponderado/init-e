import InitE.BackendStages.TargetChecks.CorrectData1_185
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_185_eq : LabToTarget.sectionLabels 60468 Reencode0_185.lines [] = (61144, localLabels1_185) := by
  with_unfolding_all rfl
#print axioms localLabels1_185_eq
end InitE.BackendStages.TargetChecks.Correct
