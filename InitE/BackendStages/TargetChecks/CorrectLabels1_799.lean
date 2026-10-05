import InitE.BackendStages.TargetChecks.CorrectData1_799
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_799_eq : LabToTarget.sectionLabels 808704 Reencode0_799.lines [] = (810176, localLabels1_799) := by
  with_unfolding_all rfl
#print axioms localLabels1_799_eq
end InitE.BackendStages.TargetChecks.Correct
