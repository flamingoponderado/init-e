import InitE.BackendStages.TargetChecks.CorrectData1_798
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_798_eq : LabToTarget.sectionLabels 807356 Reencode0_798.lines [] = (808704, localLabels1_798) := by
  with_unfolding_all rfl
#print axioms localLabels1_798_eq
end InitE.BackendStages.TargetChecks.Correct
