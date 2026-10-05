import InitE.BackendStages.TargetChecks.CorrectData1_191
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_191_eq : LabToTarget.sectionLabels 64468 Reencode0_191.lines [] = (65780, localLabels1_191) := by
  with_unfolding_all rfl
#print axioms localLabels1_191_eq
end InitE.BackendStages.TargetChecks.Correct
