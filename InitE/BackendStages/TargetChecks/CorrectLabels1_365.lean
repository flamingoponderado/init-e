import InitE.BackendStages.TargetChecks.CorrectData1_365
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_365_eq : LabToTarget.sectionLabels 249708 Reencode0_365.lines [] = (250532, localLabels1_365) := by
  with_unfolding_all rfl
#print axioms localLabels1_365_eq
end InitE.BackendStages.TargetChecks.Correct
