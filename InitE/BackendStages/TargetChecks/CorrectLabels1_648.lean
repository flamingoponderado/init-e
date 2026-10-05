import InitE.BackendStages.TargetChecks.CorrectData1_648
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_648_eq : LabToTarget.sectionLabels 554904 Reencode0_648.lines [] = (554972, localLabels1_648) := by
  with_unfolding_all rfl
#print axioms localLabels1_648_eq
end InitE.BackendStages.TargetChecks.Correct
