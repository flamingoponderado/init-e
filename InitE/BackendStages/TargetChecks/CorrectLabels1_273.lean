import InitE.BackendStages.TargetChecks.CorrectData1_273
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_273_eq : LabToTarget.sectionLabels 169240 Reencode0_273.lines [] = (169564, localLabels1_273) := by
  with_unfolding_all rfl
#print axioms localLabels1_273_eq
end InitE.BackendStages.TargetChecks.Correct
