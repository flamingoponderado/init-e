import InitE.BackendStages.TargetChecks.CorrectData1_581
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_581_eq : LabToTarget.sectionLabels 423384 Reencode0_581.lines [] = (423924, localLabels1_581) := by
  with_unfolding_all rfl
#print axioms localLabels1_581_eq
end InitE.BackendStages.TargetChecks.Correct
