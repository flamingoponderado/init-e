import InitE.BackendStages.TargetChecks.CorrectData1_889
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_889_eq : LabToTarget.sectionLabels 998088 Reencode0_889.lines [] = (998312, localLabels1_889) := by
  with_unfolding_all rfl
#print axioms localLabels1_889_eq
end InitE.BackendStages.TargetChecks.Correct
