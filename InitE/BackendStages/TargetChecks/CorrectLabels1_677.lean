import InitE.BackendStages.TargetChecks.CorrectData1_677
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_677_eq : LabToTarget.sectionLabels 599244 Reencode0_677.lines [] = (599836, localLabels1_677) := by
  with_unfolding_all rfl
#print axioms localLabels1_677_eq
end InitE.BackendStages.TargetChecks.Correct
