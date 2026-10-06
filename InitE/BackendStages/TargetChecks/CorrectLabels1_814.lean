import InitE.BackendStages.TargetChecks.CorrectData1_814
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_814_eq : LabToTarget.sectionLabels 864440 Reencode0_814.lines [] = (866156, localLabels1_814) := by
  with_unfolding_all rfl
#print axioms localLabels1_814_eq
end InitE.BackendStages.TargetChecks.Correct
